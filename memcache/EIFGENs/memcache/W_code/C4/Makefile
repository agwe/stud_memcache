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

OBJECTS = big_file_C4_c.o 

OLDOBJECTS =  it973.o it973d.o ne959.o ne959d.o eq974.o eq974d.o ti968.o ti968d.o \
	ne958.o ne958d.o da971.o da971d.o eq960.o eq960d.o eq972.o eq972d.o \
	it961.o it961d.o da966.o da966d.o ti967.o ti967d.o da964.o da964d.o \
	da969.o da969d.o da970.o da970d.o fi965.o fi965d.o in975.o in975d.o \
	da963.o da963d.o th962.o th962d.o 

all: Cobj4.o

Cobj4.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj4.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

