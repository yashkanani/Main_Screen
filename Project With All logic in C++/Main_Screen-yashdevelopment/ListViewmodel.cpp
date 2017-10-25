#include "ListViewmodel.h"

QVariant ListViewmodel:: data(const QModelIndex &index, int role) const
{
    int row = index.row();

    if ((row<0) || (row>= item.count()))
    {
        return QVariant ();
    }

   strcutdata data = item.at(row);
    switch (role)
        {
        case (1):
            return data.icon;

        case (2):
            return data.textname;

    default:
            break;
        }
   return QVariant ();
}

int ListViewmodel::rowCount(const QModelIndex &) const
{
    return item.count();
}


QHash<int,QByteArray> ListViewmodel :: roleNames() const
       {
           QHash<int, QByteArray> roles;
           roles[1] = "portrait";
           roles[2] = "name";
           return roles;
       }

void ListViewmodel :: addEntry( strcutdata newButton)
        {
            beginInsertRows(QModelIndex(),rowCount(),rowCount());
            item.append(newButton);
            endInsertRows();
        }
