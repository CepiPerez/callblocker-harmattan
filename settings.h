#ifndef SETTINGS_H
#define SETTINGS_H

#include <QDeclarativeItem>

class Settings : public QDeclarativeItem
{
    Q_OBJECT
    Q_PROPERTY(QString mode READ mode NOTIFY modeChanged)
    Q_PROPERTY(QString active READ active NOTIFY activeChanged)
    Q_PROPERTY(QString unknown READ unknown NOTIFY unknownChanged)

public:
    Settings(QDeclarativeItem *parent = 0);

    QString mode() const;
    QString active() const;
    QString unknown() const;

public slots:
    void changeActive(bool active);
    void changeUnknown(bool active);
    void changeMode(QString mode);

signals:
    void modeChanged();
    void activeChanged();
    void unknownChanged();

};

#endif // SETTINGS_H
