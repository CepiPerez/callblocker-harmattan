#include "numbers.h"

#include <QDeclarativeView>
#include <QDir>
#include <QFileInfo>
#include <QDateTime>
#include <QProcess>
#include <QDebug>
#include <QIcon>

#include <QContactManager>
#include <QContactDetailFilter>
#include <QContactPhoneNumber>
#include <QContactLocalIdFilter>
#include <QContactAvatar>

QTM_USE_NAMESPACE

struct NumbersItem
{
    QString name;
    QString desc;
    QString avatar;
};

class Numbers::NumbersPrivate
{
public:
    NumbersPrivate(Numbers * parent);
    ~NumbersPrivate();
    void populateItems();
    QList <NumbersItem * > items;
    Numbers * const q;
    QString list;
    QContactManager* m;
    QContact contact;
    QContactAvatar cavatar;
    QStringList book;

};

Numbers::NumbersPrivate::NumbersPrivate(Numbers * parent) : q(parent)
{
    m = new QContactManager();

    book.clear();
    QList<QContact> matchingContacts = m->contacts();
    for (int i=0; i<matchingContacts.size(); ++i)
    {
        QContact contact = matchingContacts.at(i);
        QList<QContactDetail> allDetails = contact.details();
        foreach (const QContactDetail& detail, allDetails)
        {
            if ( detail.definitionName() == "PhoneNumber")
            {
                book.append( contact.displayLabel() );
                book.append( detail.value("PhoneNumber") );
            }
            if ( detail.definitionName() == "Avatar")
            {
                book.append( "-avatar-" + contact.displayLabel() );
                book.append( detail.value("ImageUrl") );
            }
        }
    }

    //qDebug() << book;

}

Numbers::NumbersPrivate::~NumbersPrivate()
{
    while(!items.isEmpty())
    {
        delete items.takeFirst();
    }
}

void Numbers::NumbersPrivate::populateItems()
{

    QSettings settings("cepiperez", "callblocker");
    QStringList entries;

    if ( list=="blacklist" )
        entries = settings.value("Blacklist",QStringList()).toStringList();
    else
        entries = settings.value("Whitelist",QStringList()).toStringList();

    entries.removeAll("");
    entries.removeDuplicates();

    entries.sort();

    //qDebug() << "NUMBERS: " << entries;


    int itemsCount = items.count();
    int entriesCount = entries.count();

    //qDebug() << "Items: " << itemsCount << " - Entries: " << entriesCount;


    if(entriesCount < itemsCount)
    {
        q->beginRemoveRows(QModelIndex() , entriesCount , itemsCount);

        for (int i = entriesCount ; i < itemsCount ; i++)
            delete items.takeLast();

        q->endRemoveRows();
    }
    else if (entriesCount > itemsCount)
    {
        q->beginInsertRows(QModelIndex() , itemsCount , entriesCount - 1);

        for(int i = itemsCount ; i < entriesCount ; i++)
            items.append(new NumbersItem);

        q->endInsertRows();
    }

    QListIterator<QString> entriesIterator (entries);
    QListIterator<NumbersItem *> itemsIterator(items);

    while(entriesIterator.hasNext() && itemsIterator.hasNext())
    {
        NumbersItem * item = itemsIterator.next();
        item->desc = entriesIterator.next();
        item->name = item->desc;
        item->avatar = "image://theme/icon-l-content-avatar-placeholder";

        int i = book.indexOf(item->desc);
        if ( i > -1)
        {
            item->name = book.at(i-1);
            int j = book.indexOf("-avatar-"+item->name);
            if ( j > -1 )
                item->avatar = book.at(j+1);
        }

    }

    if(entriesCount != itemsCount)
    {
        emit(q->countChanged());
    }

    emit(q->dataChanged(q->index(0) , q->index(entriesCount - 1)));

}

Numbers::Numbers(QObject * parent) :
        QAbstractListModel(parent) , d (new NumbersPrivate(this))
{
    QHash <int, QByteArray> roles;
    roles.insert(NameRole , "name");
    roles.insert(DescRole , "desc");
    roles.insert(AvatarRole , "avatar");
    setRoleNames(roles);
    //d->populateItems();
}

Numbers::~Numbers()
{
    delete d;
}

int Numbers::rowCount(const QModelIndex & parent) const
{
    Q_UNUSED(parent)
    return d->items.size();
}

QVariant Numbers::data(const QModelIndex & index , int role) const
{
    if(index.row() < 0 or index.row() > count())
    {
        return QVariant();
    }

    NumbersItem * item = d->items.at(index.row());
    switch(role)
    {
    case NameRole:
        return item->name;
        break;
    case AvatarRole:
        return item->avatar;
        break;
    case DescRole:
        return item->desc;
        break;
    default:
        return QVariant();
        break;
    }
}

int Numbers::count() const
{
    return rowCount();
}

void Numbers::addItem(const QString &type, const QString &number)
{
    //qDebug() << "ADDING: " << number;

    QString listtype;
    if ( d->list == "blacklist" )
        listtype = "Blacklist";
    else
        listtype = "Whitelist";

    QSettings settings("cepiperez", "callblocker");
    QStringList entries = settings.value(listtype,QStringList()).toStringList();
    if ( type == "number" )
        entries.append(number);
    else
        entries.append("id:"+number);
    entries.removeDuplicates();
    entries.removeAll("");
    settings.setValue(listtype, entries);
    settings.sync();
    d->populateItems();

}

void Numbers::edit(const QString &old, const QString &number)
{
    //qDebug() << "EDITING: " << old << " to "  << number;

    QString listtype;
    if ( d->list == "blacklist" )
        listtype = "Blacklist";
    else
        listtype = "Whitelist";

    QSettings settings("cepiperez", "callblocker");
    QStringList entries = settings.value(listtype,QStringList()).toStringList();
    entries.removeAll(old);
    entries.append(number);
    entries.removeDuplicates();
    entries.removeAll("");
    settings.setValue(listtype, entries);
    settings.sync();
    d->populateItems();

}

void Numbers::remove(const QString &number)
{
    //qDebug() << "REMOVING: " << number;

    QString listtype;
    if ( d->list == "blacklist" )
        listtype = "Blacklist";
    else
        listtype = "Whitelist";

    QSettings settings("cepiperez", "callblocker");
    QStringList entries = settings.value(listtype,QStringList()).toStringList();
    entries.removeAll(number);
    settings.setValue(listtype, entries);
    settings.sync();
    d->populateItems();

}

void Numbers::setList(const QString &list)
{
    //qDebug() << "LOADING LIST: " << list;
    if(d->list != list)
    {
        d->list = list;
        d->populateItems();
        emit(listChanged());
    }
}

QString Numbers::list() const
{
    return d->list;
}
