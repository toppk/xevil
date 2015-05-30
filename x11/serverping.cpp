/* 
 * XEvil(TM) Copyright (C) 1994,2000 Steve Hardt and Michael Judge
 * http://www.xevil.com
 * satan@xevil.com
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program, the file "gpl.txt"; if not, write to the Free
 * Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
 * 02111-1307, USA, or visit http://www.gnu.org.
 */

// "serverping.cpp"

// Although this is currently in the X11 directory, it is all cross-platform
// code and should be reasonably easy to compile on Windows.


#include <iostream>
#include <strstream>
#include "utils.h"
#include "streams.h"
#include "xetp_basic.h"
#include "neth.h"
#include "id.h"



class ServerPing {
public:
  ServerPing(int argc,char** argv);

  ~ServerPing();

  void go();


private:
  enum {
    COUNT_DEFAULT = 3, 
    TIMEOUT_DEFAULT = 1000,
  };

  void message(const char* msg);

  void error(const char* msg);
  void error(const char* msg1,const char* msg2);

  void print_usage_and_exit();

  void print_results_and_exit();
  /* REQUIRES: a XETPBasic::SERVER_PONG header was just received on
     udpIn. */
  /* EFFECTS: Print the results of a SERVER_PONG, reading data from
     udpIn. */



  int count; // Number of pings to send.
  int timeout;  // ms
  char* serverName;

  CMN_SOCKET udpSock;
  CMN_PORT clientPort;
  CMN_PORT serverPort;
  CMN_SOCKADDR_IN serverAddr;
  UDPInStreamP udpIn;
  UDPOutStreamP udpOut;
};



ServerPing::ServerPing(int argc,char** argv) {
  XETPBasic::check_sizes();

  count = COUNT_DEFAULT;
  timeout = TIMEOUT_DEFAULT;
  // Means not set.
  clientPort = 0;


  // Parse arguments.
  int n;
  const char* value;
  for (n = 0; n < argc; n++) {
    if (value = Utils::arg_value_check(n,argc,argv,"-count")) {
      count = Utils::atoi(value);
    }
    if (value = Utils::arg_value_check(n,argc,argv,"-timeout")) {
      timeout = Utils::atoi(value);
    }
    if (Utils::arg_name_check(n,argc,argv,"-h") ||
        Utils::arg_name_check(n,argc,argv,"-help")) {
      print_usage_and_exit();
    }
    if (value = Utils::arg_value_check(n,argc,argv,"-client_port")) {
      clientPort = Utils::atoi(value);
    }
  }
  
  if (argc < 2) {
    print_usage_and_exit();
  }


  char* sString = argv[argc - 1];
  char* port = Utils::strchr(sString,':');
  // server:port
  if (port) {
    serverName = new char[port - sString + 1];
    assert(serverName);
    Utils::strncpy(serverName,sString,port - sString);
    serverName[port - sString] = '\0';
    serverPort = (CMN_PORT)Utils::atoi(port + 1);
  }
  // No port specified, use default.
  else {
    serverName = Utils::strdup(sString);
    serverPort = XETPBasic::DEFAULT_PORT;
  }
  // If client port wasn't set on the command line.
  if (clientPort == 0) {
    // Don't use +1, may conflict with XEvil client on this machine.
    clientPort = XETPBasic::DEFAULT_PORT + 7;
  }


  // Set up sockets and streams.
  udpSock = socket(AF_INET, SOCK_DGRAM, 0);
  if (udpSock < 0) {
    error("Error opening client UDP socket.");
  }
  
  ostrstream str;
  str << "Looking up IP address for server " << serverName << std::ends;
  message(str.str());
  delete str.str();

  // Create server address.
  memset((void *)&serverAddr,'\0',sizeof(serverAddr));
  serverAddr.sin_family = AF_INET;
  struct hostent *hp = gethostbyname(serverName);
  if (hp == 0) {
    error("Invalid server name ",serverName);
    return;
  }
  memcpy((void *)&serverAddr.sin_addr,(void *)hp->h_addr,hp->h_length);
  serverAddr.sin_port = htons((u_short)serverPort);

#if 0
  ostrstream str2;
  str2 << serverName << " has address " 
       << hex << serverAddr.sin_addr.s_addr << std::ends;
  message(str2.str());
  delete str2.str();
#endif

  // Bind local address for UDP
  CMN_SOCKADDR_IN client;
  memset((void *)&client,'\0',sizeof(client));
  client.sin_family = AF_INET;
  client.sin_addr.s_addr = htonl(INADDR_ANY);
  client.sin_port = htons((u_short)clientPort);
  if (bind(udpSock,(CMN_SOCKADDR *)&client,sizeof(client)) < 0) {
    ostrstream str;
    str << "Could not bind local UDP port " << clientPort << std::ends;
    error(str.str());
    delete str.str();
    return;
  }

  // Create streams, only one will own the socket.
  udpIn = new UDPInStream(udpSock,True);
  udpOut = new UDPOutStream(udpSock,&serverAddr,False);
}



ServerPing::~ServerPing() {
  delete udpOut;
  delete udpIn;
  delete serverName;
}



void ServerPing::go() {  
  // Send "count" number of SERVER_PINGs.
  for (int tries = 0; tries < count; tries++) {
    // Send the ping.
    ostrstream msg;
    msg << "Sending XETP::SERVER_PING to " 
        << serverName << ':' << serverPort << std::ends;
    message(msg.str());
    delete msg.str();
    XETPBasic::send_server_ping(udpOut);
    // Don't buffer the ping.
    udpOut->flush();

    // Wait for return from server, for specified timeout.
    fd_set fdvar;
    FD_ZERO(&fdvar);
    FD_SET(udpSock,&fdvar);

    // Factor into seconds and microseconds.
    int timeoutUS = 1000 * timeout;
    struct timeval waitTime;
    waitTime.tv_sec = timeoutUS / 1000000;
    waitTime.tv_usec = timeoutUS % 1000000;

    int cond = CMN_SELECT(udpSock + 1,&fdvar,NULL,NULL,&waitTime);
    if (cond > 0 && FD_ISSET(udpSock,&fdvar)) {
      // Prepare to read from the incoming packet.
      CMN_SOCKADDR_IN addr;
      if (udpIn->prepare_packet(&addr) < 0) {
        error("Failed to read UDP packet.");
        return;
      }
      // Should check that addr == serverAddr.

      u_short method = 0;
      u_int length = 0;
      if (!XETPBasic::receive_header(udpIn,method,length)) {
        error("Received invalid UDP header.");
        return;
      }
      if (method == XETPBasic::SERVER_PONG) {
        print_results_and_exit();
      }
      else {
        message("Received packet other than SERVER_PONG.");
      }
      
      // Done with the packet.
      // There might be more than one XETP packet in the UDP packet, 
      // who cares.
      udpIn->done_packet();
    }            
  }

  // If we get here, we failed to reach the server.
  ostrstream msg;
  msg << "No return from " << serverName << ':' << serverPort << " after " 
      << count << " tries." << std::ends;
  error(msg.str());
  delete msg.str();
}



void ServerPing::message(const char* msg) {
  std::cout << msg << std::endl;
}



void ServerPing::error(const char* msg) {
  std::cerr << "ERROR: " << msg << std::endl;
  exit(1);
}



void ServerPing::error(const char* msg1,const char* msg2) {
  ostrstream str;
  str << msg1 << msg2 << std::ends;
  error(str.str());

  // Will never get here, but WTF.
  delete str.str();
}



void ServerPing::print_usage_and_exit() {
  std::cout
    << "Serverping allows you to remotely check the status of an XEvil server." 
    << std::endl
    << std::endl;
  std::cout
    << "usage: serverping {-count num_tries} {-timeout timeout_ms} "
    << "server_name{:port}" << std::endl;
  std::cout 
    << "  num_tries is the number of pings to send before giving up," 
    << " default=" << COUNT_DEFAULT << "." << std::endl;
  std::cout 
    << "  timeout_ms is the time in milliseconds to wait for a response before"
    << std::endl
    << "  giving up on each ping, default=" << TIMEOUT_DEFAULT << "." 
    << std::endl;
  std::cout
    << std::endl
    << "The output has the following form:" << std::endl
    << "SUCCESS: XEvil Server <server_name>:<server_port>" << std::endl
    << "GameStyle <game_style>" << std::endl
    << "MachinesPlaying <machines_num>" << std::endl
    << "HumansPlaying <humans_num>" << std::endl
    << "<server_OS_info>" << std::endl
    << "Name@Hostname HumanKills MachineKills" << std::endl
    << "<name>@<hostname> <human_kills> <machine_kills>" << std::endl
    << "<name>@<hostname> <human_kills> <machine_kills>" << std::endl
    << "... {line repeats for each human player}" << std::endl;
  exit(1);
}



void ServerPing::print_results_and_exit() {
  std::cout 
    << std::endl
    << "SUCCESS: XEvil Server " << serverName << ":" 
    << serverPort << std::endl;
  
  GameStyleType gsType = (GameStyleType)udpIn->read_char();
  std::cout << "GameStyle " << Utils::game_style_to_string(gsType) << std::endl;

  int enemiesNum = udpIn->read_int();
  std::cout << "MachinesPlaying " << enemiesNum << std::endl;

  int humansNum = udpIn->read_short();
  std::cout << "HumansPlaying " << humansNum << std::endl;

  char* version = Utils::string_read(udpIn);
  std::cout << version << std::endl;
  delete version;

  std::cout << "Name@Hostname HumanKills MachineKills" << std::endl;

  // Read in data specific to each Human.
  const int NAME_LENGTH = 40;
  char name[NAME_LENGTH];
  char clientName[NAME_LENGTH];
  for (int n = 0; n < humansNum; n++) {
    Utils::string_read(udpIn,name,NAME_LENGTH);
    Utils::string_read(udpIn,clientName,NAME_LENGTH);
    int humanKills = udpIn->read_int();
    int enemyKills = udpIn->read_int();
    Id id;
    id.read(udpIn);
    std::cout << '\"' << name << "\"@" << clientName << ' ' << humanKills 
         << ' ' << enemyKills << std::endl;
  }

  exit(0);
}



main(int argc,char** argv) {
  ServerPing ping(argc,argv);
  ping.go();
}
