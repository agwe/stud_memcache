INCLUDE_PATH =  -I"$(ISE_LIBRARY)/library/process/classic/unix/include"
SHELL = /bin/sh
CC = gcc
CPP = g++
CFLAGS = -O0 -pipe -march=i686 -D_GNU_SOURCE -m32  -DEIF_IEEE_BEHAVIOR -DWORKBENCH -I"/usr/local/Eiffel_15.01/studio/spec/linux-x86/include" -I. $(INCLUDE_PATH)
CPPFLAGS = -O0 -pipe -march=i686 -D_GNU_SOURCE -m32  -DWORKBENCH -I"/usr/local/Eiffel_15.01/studio/spec/linux-x86/include" -I. $(INCLUDE_PATH)
LDFLAGS = -m elf_i386
CCLDFLAGS = -m32  
LDSHAREDFLAGS =  -m32 -shared -o
EIFLIB = "/usr/local/Eiffel_15.01/studio/spec/linux-x86/lib/libwkbench.a"
EIFTEMPLATES = /usr/local/Eiffel_15.01/studio/config/linux-x86/templates
LIBS = -lm
MAKE = make
AR = ar
LD = ld
MKDEP = \$(EIFFEL_SRC)/C/mkdep $(DPFLAGS) --
MV = /bin/mv
CP = /bin/cp
RANLIB = :
RM = /bin/rm -f
FILE_EXIST = 
RMDIR = 
X2C = "/usr/local/Eiffel_15.01/studio/spec/linux-x86/bin/x2c"
SHAREDLINK = gcc
SHAREDLIBS = -lm
SHARED_SUFFIX = .so
COMMAND_MAKEFILE = 
START_TEST = if [ ! -f finished ] ; then 
END_TEST = ; fi 
CREATE_TEST = touch finished 
SYSTEM_IN_DYNAMIC_LIB = memcache.so 

.SUFFIXES:.cpp .o

.c.o:
	$(CC) $(CFLAGS) -c $<

.cpp.o:
	$(CPP) $(CPPFLAGS) -c $<

OBJECTS = eoption.o epattern.o efrozen.o ecall.o eplug.o eskelet.o enames.o \
	evisib.o ececil.o einit.o eparents.o 

all: $(OBJECTS)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

