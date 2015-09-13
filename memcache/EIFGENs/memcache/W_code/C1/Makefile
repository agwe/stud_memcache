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

OBJECTS = big_file_C1_c.o 

OLDOBJECTS =  me875.o me875d.o eq874.o eq874d.o it885.o it885d.o fa873.o fa873d.o \
	it872.o it872d.o fr871.o fr871d.o eq870.o eq870d.o eq869.o eq869d.o \
	eq868.o eq868d.o ad884.o ad884d.o c_867.o c_867d.o eq866.o eq866d.o \
	it865.o it865d.o ti891.o ti891d.o eq881.o eq881d.o so883.o so883d.o \
	pa864.o pa864d.o gr882.o gr882d.o ti890.o ti890d.o eq880.o eq880d.o \
	da879.o da879d.o eq863.o eq863d.o eq862.o eq862d.o da878.o da878d.o \
	pr861.o pr861d.o pr877.o pr877d.o pr860.o pr860d.o pr876.o pr876d.o \
	th886.o th886d.o th888.o th888d.o pr889.o pr889d.o th887.o th887d.o 

all: Cobj1.o

Cobj1.o: $(OBJECTS) Makefile
	$(LD) $(LDFLAGS) -r -o Cobj1.o $(OBJECTS)
	$(RM) $(OBJECTS)
	$(CREATE_TEST)

clean: local_clean
clobber: local_clobber

local_clean::
	$(RM) core finished *.o

local_clobber:: local_clean
	$(RM) Makefile

