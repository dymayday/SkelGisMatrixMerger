#############################################################################
# Makefile for building: SkelGisMatrixMerger
# Generated by qmake (2.01a) (Qt 4.8.2) on: jeu. ao�t 23 11:49:01 2012
# Project:  SkelGisMatrixMerger.pro
# Template: app
# Command: /usr/bin/qmake -spec /usr/share/qt/mkspecs/linux-g++ -o Makefile SkelGisMatrixMerger.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = 
CFLAGS        = -pipe -march=x86-64 -mtune=generic -O2 -pipe -fstack-protector --param=ssp-buffer-size=4 -D_FORTIFY_SOURCE=2 -Wall -W $(DEFINES)
CXXFLAGS      = -pipe -march=x86-64 -mtune=generic -O2 -pipe -fstack-protector --param=ssp-buffer-size=4 -D_FORTIFY_SOURCE=2 -Wall -W $(DEFINES)
INCPATH       = -I/usr/share/qt/mkspecs/linux-g++ -I.
LINK          = g++
LFLAGS        = -Wl,-O1,--sort-common,--as-needed,-z,relro -Wl,-O1
LIBS          = $(SUBLIBS)    
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = SkelGisMatrixMerger.cpp 
OBJECTS       = SkelGisMatrixMerger.o
DIST          = /usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/common/gcc-base.conf \
		/usr/share/qt/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt/mkspecs/common/g++-base.conf \
		/usr/share/qt/mkspecs/common/g++-unix.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/release.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf \
		SkelGisMatrixMerger.pro
QMAKE_TARGET  = SkelGisMatrixMerger
DESTDIR       = 
TARGET        = SkelGisMatrixMerger

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: SkelGisMatrixMerger.pro  /usr/share/qt/mkspecs/linux-g++/qmake.conf /usr/share/qt/mkspecs/common/unix.conf \
		/usr/share/qt/mkspecs/common/linux.conf \
		/usr/share/qt/mkspecs/common/gcc-base.conf \
		/usr/share/qt/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt/mkspecs/common/g++-base.conf \
		/usr/share/qt/mkspecs/common/g++-unix.conf \
		/usr/share/qt/mkspecs/qconfig.pri \
		/usr/share/qt/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt/mkspecs/features/qt_functions.prf \
		/usr/share/qt/mkspecs/features/qt_config.prf \
		/usr/share/qt/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt/mkspecs/features/default_pre.prf \
		/usr/share/qt/mkspecs/features/release.prf \
		/usr/share/qt/mkspecs/features/default_post.prf \
		/usr/share/qt/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt/mkspecs/features/warn_on.prf \
		/usr/share/qt/mkspecs/features/resources.prf \
		/usr/share/qt/mkspecs/features/uic.prf \
		/usr/share/qt/mkspecs/features/yacc.prf \
		/usr/share/qt/mkspecs/features/lex.prf \
		/usr/share/qt/mkspecs/features/include_source_dir.prf
	$(QMAKE) -spec /usr/share/qt/mkspecs/linux-g++ -o Makefile SkelGisMatrixMerger.pro
/usr/share/qt/mkspecs/common/unix.conf:
/usr/share/qt/mkspecs/common/linux.conf:
/usr/share/qt/mkspecs/common/gcc-base.conf:
/usr/share/qt/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt/mkspecs/common/g++-base.conf:
/usr/share/qt/mkspecs/common/g++-unix.conf:
/usr/share/qt/mkspecs/qconfig.pri:
/usr/share/qt/mkspecs/modules/qt_phonon.pri:
/usr/share/qt/mkspecs/modules/qt_webkit_version.pri:
/usr/share/qt/mkspecs/features/qt_functions.prf:
/usr/share/qt/mkspecs/features/qt_config.prf:
/usr/share/qt/mkspecs/features/exclusive_builds.prf:
/usr/share/qt/mkspecs/features/default_pre.prf:
/usr/share/qt/mkspecs/features/release.prf:
/usr/share/qt/mkspecs/features/default_post.prf:
/usr/share/qt/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt/mkspecs/features/warn_on.prf:
/usr/share/qt/mkspecs/features/resources.prf:
/usr/share/qt/mkspecs/features/uic.prf:
/usr/share/qt/mkspecs/features/yacc.prf:
/usr/share/qt/mkspecs/features/lex.prf:
/usr/share/qt/mkspecs/features/include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -spec /usr/share/qt/mkspecs/linux-g++ -o Makefile SkelGisMatrixMerger.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/SkelGisMatrixMerger1.0.0 || $(MKDIR) .tmp/SkelGisMatrixMerger1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/SkelGisMatrixMerger1.0.0/ && (cd `dirname .tmp/SkelGisMatrixMerger1.0.0` && $(TAR) SkelGisMatrixMerger1.0.0.tar SkelGisMatrixMerger1.0.0 && $(COMPRESS) SkelGisMatrixMerger1.0.0.tar) && $(MOVE) `dirname .tmp/SkelGisMatrixMerger1.0.0`/SkelGisMatrixMerger1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/SkelGisMatrixMerger1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

SkelGisMatrixMerger.o: SkelGisMatrixMerger.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o SkelGisMatrixMerger.o SkelGisMatrixMerger.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

