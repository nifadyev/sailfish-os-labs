#ifndef DEMOMODEL_H
#define DEMOMODEL_H

#include <QObject>
#include <QAbstractListModel>


class DemoModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum DemoRoles {
        NameRole = Qt::UserRole + 1,
    };

    explicit DemoModel(QObject *parent = 0);

    virtual int rowCount(const QModelIndex&) const { return backing.size(); }
    virtual QVariant data(const QModelIndex &index, int role) const;

    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE void activate(const int i);

private:
    QVector<QString> backing;
};

#endif // DEMOMODEL_H
