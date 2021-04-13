#include "settings.h"

#include <QSettings>

Settings::Settings(QDeclarativeItem *parent)
    : QDeclarativeItem(parent)
{

}

QString Settings::mode() const
{
    QSettings sets("cepiperez", "callblocker");
    QString t = sets.value("Mode", "blacklist").toString();
    return t;
}

QString Settings::active() const
{
    QSettings sets("cepiperez", "callblocker");
    QString t = sets.value("Active", "false").toString();
    return t;
}

QString Settings::unknown() const
{
    QSettings sets("cepiperez", "callblocker");
    QString t = sets.value("Unknown", "false").toString();
    return t;
}

void Settings::changeActive(bool active)
{
    //qDebug() << "CHANGING ACTIVE: " << active;

    QSettings sets("cepiperez", "callblocker");
    sets.setValue("Active", active);
    sets.sync();
}

void Settings::changeUnknown(bool active)
{
    //qDebug() << "CHANGING UKNOWN: " << active;

    QSettings sets("cepiperez", "callblocker");
    sets.setValue("Unknown", active);
    sets.sync();
}

void Settings::changeMode(QString mode)
{
    //qDebug() << "CHANGING MODE: " << mode;

    QSettings sets("cepiperez", "callblocker");
    sets.setValue("Mode", mode);
    sets.sync();

    emit modeChanged();
}
