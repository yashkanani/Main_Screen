#ifndef REFRESHCLASS_H
#define REFRESHCLASS_H

#include <QObject>

class RefreshClass : public QObject
{
    Q_OBJECT
public:
    explicit RefreshClass(QObject *parent = nullptr);

signals:

public slots:

    void onrefresh()
    {

    }
};

#endif // REFRESHCLASS_H
