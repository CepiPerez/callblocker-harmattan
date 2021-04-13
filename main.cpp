#include <applauncherd/MDeclarativeCache>
#include <MLocale>

#include <QTranslator>
#include <QtGui/QApplication>
#include <QtDeclarative>
#include <QtCore/QtGlobal>

#include "numbers.h"
#include "settings.h"

Q_DECL_EXPORT int main(int argc, char **argv)
{

    QTextCodec *linuxCodec = QTextCodec::codecForName("UTF-8");
    QTextCodec::setCodecForTr(linuxCodec);
    QTextCodec::setCodecForCStrings(linuxCodec);
    QTextCodec::setCodecForLocale(linuxCodec);

    qmlRegisterType<Numbers>("org.cepi.callblocker" , 1 , 0 , "Numbers");
    qmlRegisterType<Settings>("org.cepi.callblocker" , 1 , 0 , "Settings");

    QProcess * process = new QProcess();
    process->start("/opt/CallBlocker/bin/callerx.sh");


    QApplication *app = MDeclarativeCache::qApplication(argc, argv);

    MLocale myLocale;
    QString lang = myLocale.language();
    QTranslator translator;

    if (QFile::exists("/opt/CallBlocker/lang/qml_"+ lang + ".qm"))
    {
        //qDebug() << "TRANSLATION:" << lang;
        translator.load("/opt/CallBlocker/lang/qml_" + lang);
        app->installTranslator(&translator);
    }

    QDeclarativeView *view = MDeclarativeCache::qDeclarativeView();
    view->setSource(QUrl("qrc:/qml/main.qml"));
    view->showFullScreen();
    return app->exec();

}
