#ifndef MAINSCREENLOAD_H
#define MAINSCREENLOAD_H

#include <QObject>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include "ListViewmodel.h"
#include <iostream>
#include <QQuickView>
#include <QQmlContext>
#include <QQuickItem>
#include<ScreenLoader.h>

class MainScreenLoad : public QObject
{
    Q_OBJECT
public:
    explicit MainScreenLoad(QObject *parent = nullptr);
    void aliasOfengine(QQmlApplicationEngine  *enginealias);
    void mainScreenLoad();
    ScreenLoader screenLoader;
    ListViewmodel item1;
private:
    QQmlApplicationEngine  *engineptr;
};

#endif // MAINSCREENLOAD_H
