# Add more folders to ship with the application, here

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

QT+= declarative

symbian:TARGET.UID3 = 0xE2678C32

# Smart Installer package's UID
# This UID is from the protected range and therefore the package will
# fail to install if self-signed. By default qmake uses the unprotected
# range value if unprotected UID is defined for the application and
# 0x2002CCCF value if protected UID is given to the application
#symbian:DEPLOYMENT.installer_header = 0x2002CCCF

# Allow network access on Symbian
symbian:TARGET.CAPABILITY += NetworkServices

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    numbers.cpp \
    settings.cpp


OTHER_FILES += \
    qml/MainPage.qml \
    qml/main.qml \
    CallBlocker.desktop \
    CallBlocker.png \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog \
    qml/FileDelegate.qml \
    qml/DrillDownDelegate.qml \
    qml/NumbersList.qml \
    qml/AddNumber.qml \
    qml/createobject.js \
    qml/GroupSeparator.qml \
    qml/SelectionItem.qml \
    callerx \
    callblocker.conf \
    callerx.sh \
    qml/Contacts.qml \
    qtc_packaging/debian_harmattan/postinst \
    lang/qml_tr.ts

RESOURCES += \
    res.qrc \
    icons.qrc

# Please do not modify the following two lines. Required for deployment.
include(deployment.pri)
qtcAddDeployment()

# enable booster
CONFIG += qdeclarative-boostable mobility
CONFIG += shareuiinterface-maemo-meegotouch share-ui-plugin #share-ui-common
QMAKE_CXXFLAGS += -fPIC -fvisibility=hidden -fvisibility-inlines-hidden
QMAKE_LFLAGS += -pie -rdynamic -lQtCore -lQtDeclarative
QMAKE_LFLAGS += -lmdeclarativecache

MOBILITY = contacts

HEADERS += \
    numbers.h \
    settings.h

mydaemon.path = /etc/init/apps
mydaemon.files = callblocker.conf
INSTALLS += mydaemon

callerx.path = /opt/CallBlocker/bin
callerx.files = callerx callerx.sh
INSTALLS += callerx

translation.files = lang/qml_es.ts \
    lang/qml_es.qm \
    lang/qml_tr.qm
translation.path = /opt/CallBlocker/lang
INSTALLS += translation



