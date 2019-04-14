#include "demomodel.h"

QHash<int, QByteArray> DemoModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[NameRole] = "name";
    return roles;
}

QVariant DemoModel::data(const QModelIndex &index, int role) const {
    if(!index.isValid()) {
        return QVariant();
    }
    if(role == NameRole) {
        return QVariant(backing[index.row()]);
    }
    return QVariant();
}

void DemoModel::activate(const int i) {
    if(i < 0 || i >= backing.size()) {
        return;
    }
    QString value = backing[i];

    // Remove the value from the old location.
    beginRemoveRows(QModelIndex(), i, i);
    backing.erase(backing.begin() + i);
    endRemoveRows();

    // Add it to the top.
    beginInsertRows(QModelIndex(), 0, 0);
    backing.insert(0, value);
    endInsertRows();
}
