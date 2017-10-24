#ifndef REFRESHCLASS_H
#define REFRESHCLASS_H
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include "ListViewmodel.h"
#include <iostream>
#include <QQuickView>
#include <QQmlContext>
#include <QQuickItem>
#include <RefreshClass.h>


#include <QObject>

class RefreshClass : public QObject
{
    Q_OBJECT
public:
    explicit RefreshClass(QObject *parent = nullptr);
    void aliasOfengine(QQmlApplicationEngine * enginealis);


public slots:

    void onRefreshsignal();

private:
    QQmlApplicationEngine * enginealisptr;
};

#endif // REFRESHCLASS_H
