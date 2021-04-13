#ifndef NUMBERS_H
#define NUMBERS_H

#include <QAbstractListModel>
#include <QSettings>

class Numbers : public QAbstractListModel
{
    Q_OBJECT
    Q_PROPERTY(int count READ count NOTIFY countChanged)
    Q_PROPERTY(QString list READ list WRITE setList NOTIFY listChanged)

public:
    enum NumbersRole
    {
        NameRole  = Qt::UserRole + 1 ,
        AvatarRole,
        DescRole
    };

    explicit Numbers(QObject * parent = 0);
    virtual ~Numbers();
    virtual int rowCount(const QModelIndex & parent = QModelIndex()) const;
    virtual QVariant data(const QModelIndex & index , int role = Qt::DisplayRole) const;
    int count() const;
    QString list() const;

signals:
    void countChanged();
    void listChanged();

public slots:
    void addItem(const QString & type, const QString & number);
    void remove(const QString & number);
    void edit(const QString & old, const QString & number);
    void setList(const QString & list);

private:
    class NumbersPrivate;
    NumbersPrivate * const d;

};

#endif // NUMBERS_H
