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

OBJECTS = big_file_C2_c.o 

OLDOBJECTS =  in903.o in903d.o in914.o in914d.o eq909.o eq909d.o in906.o in906d.o \
	it912.o it912d.o er904.o er904d.o se916.o se916d.o in908.o in908d.o \
	in901.o in901d.o da923.o da923d.o in907.o in907d.o in902.o in902d.o \
	in900.o in900d.o so913.o so913d.o it905.o it905d.o it899.o it899d.o \
	le919.o le919d.o fi918.o fi918d.o li917.o li917d.o ti922.o ti922d.o \
	ab924.o ab924d.o ti893.o ti893d.o ne915.o ne915d.o da921.o da921d.o \
	da897.o da897d.o du920.o du920d.o da896.o da896d.o ti892.o ti892d.o \
	da894.o da894d.o da895.o da895d.o co898.o co898d.o pr910.o pr910d.o \
	un911.o un911d.o 

all: Cobj2.o

Cobj2.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj2.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

