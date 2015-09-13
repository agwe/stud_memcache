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

OBJECTS = big_file_C3_c.o 

OLDOBJECTS =  ap925.o ap925d.o eq930.o eq930d.o eq934.o eq934d.o eq945.o eq945d.o \
	st957.o st957d.o eq946.o eq946d.o ad952.o ad952d.o eq943.o eq943d.o \
	so956.o so956d.o ad953.o ad953d.o ex951.o ex951d.o da944.o da944d.o \
	da947.o da947d.o mu949.o mu949d.o co948.o co948d.o pr931.o pr931d.o \
	pr932.o pr932d.o pr933.o pr933d.o pr929.o pr929d.o pr928.o pr928d.o \
	pr927.o pr927d.o pr926.o pr926d.o pr954.o pr954d.o un955.o un955d.o \
	pr950.o pr950d.o te942.o te942d.o te941.o te941d.o te940.o te940d.o \
	te939.o te939d.o te938.o te938d.o te937.o te937d.o te936.o te936d.o \
	te935.o te935d.o 

all: Cobj3.o

Cobj3.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj3.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

