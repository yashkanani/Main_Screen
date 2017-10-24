#ifndef SCREENLOADER_H
#define SCREENLOADER_H

#include <QObject>
#include<QVariant>
#include<iostream>

using namespace std;

class ScreenLoader : public QObject
{
    Q_OBJECT
public:
    explicit ScreenLoader(QObject *parent = nullptr);


public slots:
    void onReceived(QVariant value);
};

#endif // SCREENLOADER_H
