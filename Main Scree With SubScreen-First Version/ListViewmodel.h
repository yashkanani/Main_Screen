#ifndef LISTVIEWMODEL_H
#define LISTVIEWMODEL_H
#include <QAbstractItemModel>
#include <QAbstractListModel>
#include <QtCore>
#include <QtGui>


typedef struct strcutdata
{
  QString icon;
  QString textname;
}strcutdata;


class  ListViewmodel : public QAbstractListModel
{


public:
   virtual QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
   virtual int rowCount(const QModelIndex &parent = QModelIndex()) const;
    QHash<int,QByteArray> roleNames() const;
    void addEntry(strcutdata newButton);

private:
    QList <strcutdata> item;


};

#endif // LISTVIEWMODEL_H
