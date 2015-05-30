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
LIBS = -lX11 -lXpm

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

COMPRESS	=	gzip

#### Other macros are defined in the Specific Architectures section below.



# Versions of Linux with gcc 3.2.
# Added no-deprecated option so wouldn't complain about using old-style c++
# header names, eg <iostream> instead of <iostream>
default:
	@$(MAKE) CC="g++" \
CFLAGS="-Wno-deprecated -DUSE_RANDOM -DXEVIL_KEYSET=UIlinux -DUSE_UINT_NET_LENGTH" \
OBJ_DIR=$(DEPTH)/x11/release PCKG_NAME="redhatlinux" \
$(TARGETS)
