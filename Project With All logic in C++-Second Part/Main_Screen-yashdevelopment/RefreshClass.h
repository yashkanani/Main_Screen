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
#include <ScreenLoader.h>

class ScreenLoader;






using namespace std;


#include <QObject>
class MainScreenLoad;
class RefreshClass : public QObject
{
    Q_OBJECT
    //Q_PROPERTY(int height READ getHeight WRITE setHeight NOTIFY heightChanged)
public:
    explicit RefreshClass(QObject *parent = nullptr);
    void aliasOfengine(QQmlApplicationEngine  *enginealis);
    void refreshcall(QQuickItem* pointer);
    ListViewmodel item1;
    ScreenLoader* screenLoader;

public slots:

    void onRefreshsignal();

private:
    QQmlApplicationEngine*  enginealisptr;
    QQuickItem* currentScreenPointer;


};

#endif // REFRESHCLASS_H
