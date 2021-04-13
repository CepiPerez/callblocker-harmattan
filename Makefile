#############################################################################
# Makefile for building: CallBlocker
# Generated by qmake (2.01a) (Qt 4.7.4) on: s�b 6. dic 15:52:24 2014
# Project:  CallBlocker.pro
# Template: app
# Command: c:/qtsdk/madde/targets/harmattan_10.2011.34-1_rt1.2/bin/qmake.exe -spec ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default -unix -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc -o Makefile CallBlocker.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DDBUS_SERVICE=\"com.nokia.ShareUi\" -DM_APPLICATION_NAME=\"${QMAKE_TARGET}\" -DQT_NO_DEBUG -DQT_DECLARATIVE_LIB -DQT_DBUS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -g -Wno-psabi -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -I/usr/include/applauncherd -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -O2 -g -Wno-psabi -fPIC -fvisibility=hidden -fvisibility-inlines-hidden -I/usr/include/applauncherd -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default -I. -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtCore -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtGui -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtDBus -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtDeclarative -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4 -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtContacts -IC:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/maemomeegotouchshareuiinterface -IC:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/mdatauri -IC:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/share-ui-common -I/usr/include -I/usr/include/MDataUri -I/usr/include/maemo-meegotouch-interfaces -I/usr/include/meegotouch -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4 -I../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/include/qt4/QtMobility -Imoc
LINK          = g++
LFLAGS        = -pie -rdynamic -lQtCore -lQtDeclarative -lmdeclarativecache -Wl,-O1 -Wl,-rpath,C:/usr/lib
LIBS          = $(SUBLIBS)  -LC:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib -L/usr/lib -lshare-ui-common -lmdatauri -lmaemomeegotouchshareuiinterface -lmeegotouchcore -lmeegotouchsettings -lmeegotouchextensions -lQtContacts -pie -rdynamic -lmdeclarativecache -lQtDeclarative -lQtDBus -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = c:/qtsdk/madde/targets/harmattan_10.2011.34-1_rt1.2/bin/qmake.exe
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

OBJECTS_DIR   = obj/

####### Files

SOURCES       = main.cpp \
		numbers.cpp \
		settings.cpp moc/moc_numbers.cpp \
		moc/moc_settings.cpp \
		rcc/qrc_res.cpp \
		rcc/qrc_icons.cpp
OBJECTS       = obj/main.o \
		obj/numbers.o \
		obj/settings.o \
		obj/moc_numbers.o \
		obj/moc_settings.o \
		obj/qrc_res.o \
		obj/qrc_icons.o
DIST          = ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/g++.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/unix.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/linux.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/qconfig.pri \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_functions.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_config.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_pre.prf \
		deployment.pri \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/release.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_post.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/share-ui-plugin.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/share-ui-common.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/mdatauri.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/shareuiinterface-maemo-meegotouch.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_defines.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_mgen.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_mmoc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_common.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/mobility.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qdeclarative-boostable.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/link_pkgconfig.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/warn_on.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/moc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/dbusinterfaces.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/dbusadaptors.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/unix/thread.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/resources.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/uic.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/yacc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/lex.prf \
		CallBlocker.pro
QMAKE_TARGET  = CallBlocker
DESTDIR       = 
TARGET        = CallBlocker

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: CallBlocker.pro  ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default/qmake.conf ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/g++.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/unix.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/linux.conf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/qconfig.pri \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_functions.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_config.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_pre.prf \
		deployment.pri \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/release.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_post.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/share-ui-plugin.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/share-ui-common.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/mdatauri.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/shareuiinterface-maemo-meegotouch.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_defines.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_mgen.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_mmoc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_common.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/mobility.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qdeclarative-boostable.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/link_pkgconfig.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/warn_on.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/moc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/dbusinterfaces.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/dbusadaptors.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/unix/thread.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/resources.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/uic.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/yacc.prf \
		../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/lex.prf \
		c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtCore.prl \
		c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtDeclarative.prl \
		c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtDBus.prl \
		c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtGui.prl
	$(QMAKE) -spec ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default -unix -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc -o Makefile CallBlocker.pro
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/g++.conf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/unix.conf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/common/linux.conf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/qconfig.pri:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_functions.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt_config.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_pre.prf:
deployment.pri:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/release.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/default_post.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/share-ui-plugin.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/share-ui-common.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/mdatauri.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/shareuiinterface-maemo-meegotouch.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_defines.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_mgen.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_mmoc.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch_common.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/meegotouch.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/mobility.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qdeclarative-boostable.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/link_pkgconfig.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/warn_on.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/qt.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/moc.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/dbusinterfaces.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/dbusadaptors.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/unix/thread.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/resources.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/uic.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/yacc.prf:
../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/features/lex.prf:
c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtCore.prl:
c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtDeclarative.prl:
c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtDBus.prl:
c:/QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/lib/libQtGui.prl:
qmake:  FORCE
	@$(QMAKE) -spec ../../../../QtSDK/Madde/sysroots/harmattan_sysroot_10.2011.34-1_slim/usr/share/qt4/mkspecs/default -unix -after  OBJECTS_DIR=obj MOC_DIR=moc UI_DIR=ui RCC_DIR=rcc -o Makefile CallBlocker.pro

dist: 
	@$(CHK_DIR_EXISTS) obj/CallBlocker1.0.0 || $(MKDIR) obj/CallBlocker1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) obj/CallBlocker1.0.0/ && $(COPY_FILE) --parents numbers.h settings.h obj/CallBlocker1.0.0/ && $(COPY_FILE) --parents res.qrc icons.qrc obj/CallBlocker1.0.0/ && $(COPY_FILE) --parents main.cpp numbers.cpp settings.cpp obj/CallBlocker1.0.0/ && (cd `dirname obj/CallBlocker1.0.0` && $(TAR) CallBlocker1.0.0.tar CallBlocker1.0.0 && $(COMPRESS) CallBlocker1.0.0.tar) && $(MOVE) `dirname obj/CallBlocker1.0.0`/CallBlocker1.0.0.tar.gz . && $(DEL_FILE) -r obj/CallBlocker1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_mgenerator_model_make_all:
compiler_mgenerator_model_clean:
	-$(DEL_FILE) ./gen_*
compiler_mgenerator_style_make_all:
compiler_mgenerator_style_clean:
	-$(DEL_FILE) ./gen_*
compiler_moc_header_make_all: moc/moc_numbers.cpp moc/moc_settings.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc/moc_numbers.cpp moc/moc_settings.cpp
moc/moc_numbers.cpp: numbers.h
	mmoc.exe $(DEFINES) $(INCPATH) numbers.h -o moc/moc_numbers.cpp

moc/moc_settings.cpp: settings.h
	mmoc.exe $(DEFINES) $(INCPATH) settings.h -o moc/moc_settings.cpp

compiler_dbus_interface_source_make_all:
compiler_dbus_interface_source_clean:
compiler_dbus_adaptor_source_make_all:
compiler_dbus_adaptor_source_clean:
compiler_rcc_make_all: rcc/qrc_res.cpp rcc/qrc_icons.cpp
compiler_rcc_clean:
	-$(DEL_FILE) rcc/qrc_res.cpp rcc/qrc_icons.cpp
rcc/qrc_res.cpp: res.qrc \
		qml/GroupSeparator.qml \
		qml/FileDelegate.qml \
		qml/main.qml \
		qml/Contacts.qml \
		qml/MainPage.qml \
		qml/NumbersList.qml \
		qml/SelectionItem.qml \
		qml/createobject.js \
		qml/DrillDownDelegate.qml \
		qml/AddNumber.qml
	c:/QtSDK/Madde/targets/harmattan_10.2011.34-1_rt1.2/bin/rcc.exe -name res res.qrc -o rcc/qrc_res.cpp

rcc/qrc_icons.cpp: icons.qrc \
		icons/combobox-arrow.png \
		icons/drilldown-arrow.png
	c:/QtSDK/Madde/targets/harmattan_10.2011.34-1_rt1.2/bin/rcc.exe -name icons icons.qrc -o rcc/qrc_icons.cpp

compiler_image_collection_make_all: ui/qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) ui/qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_dbus_interface_header_make_all:
compiler_dbus_interface_header_clean:
compiler_dbus_interface_moc_make_all:
compiler_dbus_interface_moc_clean:
compiler_dbus_adaptor_header_make_all:
compiler_dbus_adaptor_header_clean:
compiler_dbus_adaptor_moc_make_all:
compiler_dbus_adaptor_moc_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean 

####### Compile

obj/main.o: main.cpp numbers.h \
		settings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/main.o main.cpp

obj/numbers.o: numbers.cpp numbers.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/numbers.o numbers.cpp

obj/settings.o: settings.cpp settings.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/settings.o settings.cpp

obj/moc_numbers.o: moc/moc_numbers.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/moc_numbers.o moc/moc_numbers.cpp

obj/moc_settings.o: moc/moc_settings.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/moc_settings.o moc/moc_settings.cpp

obj/qrc_res.o: rcc/qrc_res.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/qrc_res.o rcc/qrc_res.cpp

obj/qrc_icons.o: rcc/qrc_icons.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o obj/qrc_icons.o rcc/qrc_icons.cpp

####### Install

install_desktopfile: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/applications/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/applications/ 
	-$(INSTALL_FILE) c:/Users/Matias/Documents/callblocker/CallBlocker.desktop $(INSTALL_ROOT)/usr/share/applications/


uninstall_desktopfile:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/applications/CallBlocker.desktop
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/applications/ 


install_icon: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ 
	-$(INSTALL_FILE) c:/Users/Matias/Documents/callblocker/CallBlocker.png $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/


uninstall_icon:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/CallBlocker.png
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ 


install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/opt/CallBlocker/bin/ || $(MKDIR) $(INSTALL_ROOT)/opt/CallBlocker/bin/ 
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/opt/CallBlocker/bin/$(QMAKE_TARGET)"

uninstall_target:  FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/opt/CallBlocker/bin/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/CallBlocker/bin/ 


install_mydaemon: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/etc/init/apps/ || $(MKDIR) $(INSTALL_ROOT)/etc/init/apps/ 
	-$(INSTALL_FILE) c:/Users/Matias/Documents/callblocker/callblocker.conf $(INSTALL_ROOT)/etc/init/apps/


uninstall_mydaemon:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/etc/init/apps/callblocker.conf
	-$(DEL_DIR) $(INSTALL_ROOT)/etc/init/apps/ 


install_callerx: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/opt/CallBlocker/bin/ || $(MKDIR) $(INSTALL_ROOT)/opt/CallBlocker/bin/ 
	-$(INSTALL_FILE) c:/Users/Matias/Documents/callblocker/callerx $(INSTALL_ROOT)/opt/CallBlocker/bin/
	-$(INSTALL_FILE) c:/Users/Matias/Documents/callblocker/callerx.sh $(INSTALL_ROOT)/opt/CallBlocker/bin/


uninstall_callerx:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/opt/CallBlocker/bin/callerx 
	 -$(DEL_FILE) -r $(INSTALL_ROOT)/opt/CallBlocker/bin/callerx.sh
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/CallBlocker/bin/ 


install_translation: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/opt/CallBlocker/lang/ || $(MKDIR) $(INSTALL_ROOT)/opt/CallBlocker/lang/ 
	-$(INSTALL_FILE) c:/Users/Matias/Documents/callblocker/lang/qml_es.ts $(INSTALL_ROOT)/opt/CallBlocker/lang/
	-$(INSTALL_FILE) c:/Users/Matias/Documents/callblocker/lang/qml_es.qm $(INSTALL_ROOT)/opt/CallBlocker/lang/


uninstall_translation:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/opt/CallBlocker/lang/qml_es.ts 
	 -$(DEL_FILE) -r $(INSTALL_ROOT)/opt/CallBlocker/lang/qml_es.qm
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/CallBlocker/lang/ 


install:  install_desktopfile install_icon install_target install_mydaemon install_callerx install_translation  FORCE

uninstall: uninstall_desktopfile uninstall_icon uninstall_target uninstall_mydaemon uninstall_callerx uninstall_translation   FORCE

FORCE:

