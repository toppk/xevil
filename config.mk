# 
# XEvil(TM) Copyright (C) 1994,2000 Steve Hardt and Michael Judge
# http://www.xevil.com
# satan@xevil.com
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or (at
# your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program, the file "gpl.txt"; if not, write to the Free
# Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA, or visit http://www.gnu.org.
#


#### Defines that are applicable to makes on all UNIX architectures

SHELL       =   /bin/sh
OBJ_DIR		=   $(DEPTH)/x11/release
TARGETS	    =   xevil

# For a debug build, DEBUG_OPT should be -g
# For a release build, DEBUG_OPT should be -O
# Also look at the comment about $(STRIP) in the toplevel makefile for
# debug vs. release builds.
#
# You can add -DNDEBUG to speed up a release build by removing the assert() 
# calls.  But, on a really obscure Linux machine, this caused Xlib to blow up 
# internally, so you do so at your own risk.
DEBUG_OPT   =   -O #-DNDEBUG

LINK_OPT    =	

# The string that will be used for making the packaged .tar.Z file.
VERSION     =   2.02r2

#SRC_DIR and WORK_DIR are only used for `make workdir`
SRC_DIR		= 	/mit/hardts/src/X/xevil1.4.9
WORK_DIR 	=	/tmp/hardts3

## Files not specified relative to DEPTH because we don't want the 
## ./win32/res in the zip file.  Or, unzipxevil won't work.
FILES		= 	\
*readme* makefile \
x11/app-defaults \
classes* *.mk unzipxevil \
cmn/*.cpp cmn/*.h cmn/makefile \
cmn/bitmaps \
x11/*.cpp x11/*.h x11/makefile \
x11/bitmaps x11/gen_xpm \
instructions/*.html \
*.xew *.bat *.txt *.html *.spec

WIN32_BINARY_FILES	=	\
win32/*.lib \
win32/res \
win32/sounds \
instructions/*.gif

WIN32_TEXT_FILES = \
dist.bat \
win32/*.cpp \
win32/*.h \
win32/*.mak \
win32/*.rc \
win32/*.dsp \
win32/*.dsw

STRIP		=	strip
COMPRESS	=	gzip

#### Other macros are defined in the Specific Architectures section below.



# Versions of Linux with gcc 3.2.
# Added no-deprecated option so wouldn't complain about using old-style c++
# header names, eg <iostream> instead of <iostream>
default:
	@$(MAKE) CC="g++" \
CFLAGS="-Wno-deprecated -DUSE_RANDOM -DXEVIL_KEYSET=UIlinux -DUSE_UINT_NET_LENGTH" \
LINK_FLAGS="-static" \
INCL_DIRS="-I/usr/X11R6/include" \
LIBS_DIRS="-L/usr/X11R6/lib" \
LIBS="-lXpm -lX11 -lm -ldl" \
OBJ_DIR=$(DEPTH)/x11/REDHAT_LINUX PCKG_NAME="redhatlinux" \
$(TARGETS)


# Versions of Linux generally up to gcc 2.96
i386:
	@$(MAKE) CC="g++" \
CFLAGS="-DUSE_RANDOM -DXEVIL_KEYSET=UIlinux -DUSE_UINT_NET_LENGTH" \
LINK_FLAGS="-static" \
INCL_DIRS="-I/usr/X11R6/include" \
LIBS_DIRS="-L/usr/X11R6/lib" \
LIBS="-lXpm -lX11 -lm" \
OBJ_DIR=$(DEPTH)/x11/REDHAT_LINUX PCKG_NAME="redhatlinux" \
$(TARGETS)

# use static 
# Should add -DXEVIL_KEYSET=UIlinux
i386-linux-old:
	@$(MAKE) CC="g++" CFLAGS="-DUSE_RANDOM -DPROTECTED_IS_PUBLIC -DIO_COOKIE_HACK" \
LINK_FLAGS="-static" INCL_DIRS="" LIBS_DIRS="-L/usr/X11R6/lib" \
LIBS="-lXpm -lX11 -lm" \
OBJ_DIR=$(DEPTH)/x11/LINUX \
$(TARGETS)

#for devastator and truth
i386-linux-old2:
	@$(MAKE) CC="g++" CFLAGS="-DUSE_RANDOM -DPROTECTED_IS_PUBLIC -DIO_COOKIE_HACK -DXEVIL_KEYSET=UIlinux" \
LINK_FLAGS="-static" INCL_DIRS="" LIBS_DIRS="-L/usr/X11R6/lib" \
LIBS="-lXpm -lX11 -lm" \
OBJ_DIR=$(DEPTH)/x11/LINUX PCKG_NAME="linux" \
$(TARGETS)

# Some other varieties of linux, perhaps should change OBJ_DIR and PCKG_NAME
i386-linux:
	@$(MAKE) i386

i486-linux:
	@$(MAKE) i386

powerpc-linux:
	@$(MAKE) i386

powerpc:
	@$(MAKE) i386


i386-sco:
	@$(MAKE) CC="CC" CFLAGS="-b elf -DUSE_RANDOM -DUSE_SELECT_H -DMATH_H_IS_CC" \
INCL_DIRS="-I/usr/include/X11 -I/usr/include/CC" \
LIBS_DIRS="-L/usr/lib -L/usr/lib/CC" \
LIBS="-lXpm -lX11 -lm -lc -lsocket -lmalloc" $(TARGETS)


#static doesn't work on jordan
rs6000jordanalso:
	@$(MAKE) CC="g++" CFLAGS="-DUSE_RANDOM -DUSE_SELECT_H -DXEVIL_KEYSET=UIrsaix -DPROTECTED_IS_PUBLIC -DUSE_ULONG_NET_LENGTH" \
LIBS="-lXpm -lX11 -lm" INCL_DIRS="-I/usr/include -I/tools/ns/lib/g++-include" \
LIBS_DIRS="-L/tools/ns/lib" \
OBJ_DIR=$(DEPTH)/x11/AIX \
$(TARGETS)

#static doesn't work on jordan
#jordan
rs6000jordan:
	@$(MAKE) CC="g++" CFLAGS="-DUSE_RANDOM -DUSE_SELECT_H -DXEVIL_KEYSET=UIrsaix -DPROTECTED_IS_PUBLIC -DUSE_ULONG_NET_LENGTH" \
INCL_DIRS="-I/usr/include -I/tools/ns/lib/g++-include -I/u/mjudge/xevil/xpm/include" \
LIBS_DIRS="-L/tools/ns/lib -L/u/mjudge/xevil/xpm/AIX" \
LIBS="-lXpm -lX11 -lm" \
OBJ_DIR=$(DEPTH)/x11/AIX PCKG_NAME="aix"\
$(TARGETS)

#iron
rs6000:
	@$(MAKE) CC="g++" CFLAGS="-DUSE_RANDOM -DUSE_SELECT_H -DXEVIL_KEYSET=UIrsaix -DPROTECTED_IS_PUBLIC -DMATH_CLASS_HACK " \
INCL_DIRS="-I/usr/include -I/tools/ns/lib/g++-include -I/u/mjudge/xevil/xpm/include" \
LIBS_DIRS="-L/tools/ns/lib -L/u/mjudge/xevil/xpm/AIX" \
LIBS="-lXpm -lX11 -lm" \
LINK_FLAGS="" \
OBJ_DIR=$(DEPTH)/x11/AIX PCKG_NAME="aix"\
$(TARGETS)

oldsun4:
	@$(MAKE) CC="g++" LIBS="-lXpm -lX11 -lm" \
CFLAGS="-DCLOCKS_PER_SEC=1000000L -DUSE_RANDOM -DRANDOM_NEEDS_PROTOTYPES -DXEVIL_KEYSET=UIsun4 -DPROTECTED_IS_PUBLIC -DSELECT_NEEDS_PROTOTYPES" \
$(TARGETS)

openwound-sun4:
	@$(MAKE) CC="g++" LIBS="-lXpm -lX11 -lm" \
CFLAGS="-DUSE_RANDOM -DRANDOM_NEEDS_PROTOTYPES -DXEVIL_KEYSET=UIsun4 -DPROTECTED_IS_PUBLIC -DSELECT_NEEDS_PROTOTYPES -DOPENWOUND_XOS_STRLEN_HACK" \
INCL_DIRS="-I/tools/ns/lib/g++-include -I/usr/openwin/include -I/u/mjudge/xevil/xpm/include"\
LIBS_DIRS="-L/tools/ns/lib -L/usr/openwin/lib -L/u/mjudge/xevil/xpm/SUN4"\
LINK_FLAGS="-static" \
OBJ_DIR=$(DEPTH)/x11/SUN4 PCKG_NAME="sun4" \
$(TARGETS)
#  Took out -DCLOCKS_PER_SEC=1000000L 


# scar
sun4-scar:
	@$(MAKE) CC="g++" LIBS="-lXpm -lX11 -lm" \
CFLAGS="-DCLOCKS_PER_SEC=1000000L -DUSE_RANDOM -DRANDOM_NEEDS_PROTOTYPES -DXEVIL_KEYSET=UIsun4 -DPROTECTED_IS_PUBLIC -DSELECT_NEEDS_PROTOTYPES -DOPENWOUND_XOS_STRLEN_HACK" \
INCL_DIRS="-I/tools/ns/lib/g++-include -I/usr/openwin/include"\
LIBS_DIRS="-L/tools/ns/lib -L/usr/openwin/lib"\
LINK_FLAGS="-static" \
OBJ_DIR=$(DEPTH)/x11/SUN4 PCKG_NAME="sun4" \
$(TARGETS)

# was acland, now worms
solaris-old:
	@$(MAKE) CC="g++" LIBS="-lXext -lXpm -lX11 -lm -lsocket -lnsl" \
CFLAGS="-DUSE_RANDOM -DRANDOM_NEEDS_PROTOTYPES -DXEVIL_KEYSET=UIsun4 -DPROTECTED_IS_PUBLIC -DSELECT_NEEDS_PROTOTYPES -DOPENWOUND_XOS_STRLEN_HACK" \
INCL_DIRS="-I/tools/ns/lib/g++-include -I/usr/openwin/include -I/u/mjudge/xevil/xpm/xpm-3.4k-solaris/include" \
LIBS_DIRS="-L/tools/ns/lib -L/usr/openwin/lib -L/u/mjudge/xevil/xpm/xpm-3.4k-solaris/lib" \
LINK_FLAGS="-static" \
OBJ_DIR=$(DEPTH)/x11/SOLARIS PCKG_NAME="solaris" \
$(TARGETS)

sun4:
	@$(MAKE) solaris

# worms
# now, mocha
solaris:
	@$(MAKE) CC="g++" LIBS="-lXext -lXpm -lX11 -lm -lsocket -lnsl" \
CFLAGS="-DUSE_RANDOM -DXEVIL_KEYSET=UIsun4 -DPROTECTED_IS_PUBLIC -DSELECT_NEEDS_PROTOTYPES -DOPENWOUND_XOS_STRLEN_HACK" \
INCL_DIRS="-I/usr/openwin/include -I/u/mjudge/xevil/xpm/include" \
LIBS_DIRS="-L/usr/openwin/lib -L/u/mjudge/xevil/xpm/SOLARIS" \
LINK_FLAGS="" \
OBJ_DIR=$(DEPTH)/x11/SOLARIS PCKG_NAME="solaris" \
$(TARGETS)

beepbeep-sun4:
	@$(MAKE) CC="g++" LIBS="-lXpm -lX11 -lm" \
CFLAGS="-DXEVIL_KEYSET=UIsun4 -DPROTECTED_IS_PUBLIC" \
INCL_DIRS="-I/usr/openwin/include" LIBS_DIRS="-L/usr/openwin/lib" \
$(TARGETS)


sun5:
	@$(MAKE) CC="g++" LIBS="-lXpm -lX11 -lm" \
CFLAGS="-DUSE_RANDOM -DRANDOM_NEEDS_PROTOTYPES -DXEVIL_KEYSET=UIsun4 -DPROTECTED_IS_PUBLIC" \
INCL_DIRS="-I/usr/openwin/include" LIBS_DIRS="-L/usr/openwin/lib" \
$(TARGETS)


vision-sun4:
	@$(MAKE) CC="g++" LIBS="-lXpm -lX11 -lm" \
CFLAGS="-DCLOCKS_PER_SEC=1000000L -DUSE_RANDOM -DRANDOM_NEEDS_PROTOTYPES -DXEVIL_KEYSET=UIsun4 -DPROTECTED_IS_PUBLIC" \
INCL_DIRS="-I/usr/openwin/include" \
$(TARGETS)


#dynamic linking fails
sun386i:
	@$(MAKE) CC="g++"\
INCL_DIRS="-I/usr/openwin/include -I/u/mjudge/xevil/xpm/include" \
LIBS_DIRS="-L/usr/openwin/lib -L/u/mjudge/xevil/xpm/SOLX86" \
LIBS="-lXpm -lX11 -lm -lsocket -lnsl" \
STRIP="/usr/ccs/bin/strip" \
LINK_FLAGS="" \
OBJ_DIR=$(DEPTH)/x11/SOLX86 PCKG_NAME="solx86"\
$(TARGETS)

