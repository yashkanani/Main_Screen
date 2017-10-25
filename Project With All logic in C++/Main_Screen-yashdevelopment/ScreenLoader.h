#ifndef SCREENLOADER_H
#define SCREENLOADER_H

#include <QObject>
#include<QVariant>
#include<iostream>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <QQuickView>
#include <QQmlContext>
#include "RefreshClass.h"

using namespace std;

class ScreenLoader : public QObject
{
    Q_OBJECT
public:
    explicit ScreenLoader(QObject *parent = nullptr);
    void getEnginePointer(QQmlApplicationEngine *, QQuickWindow* );
    void deleteobject(QQuickItem*);



public slots:
    void onReceived(QVariant value);
    void onPressed(QVariant indexnum);
    void onEntered(QVariant indexnum);
    void onExited(QVariant indexnum);

private:
    QQmlApplicationEngine * enginerefrenceptr;
    QQuickWindow* mainWindowalisptr;
    QQuickItem* pointerOfMainScreen;
    QQuickItem* gridrect;
    QQuickItem* gridtext;
    QQuickItem* gridicon;
    RefreshClass refreshObject;

};

#endif // SCREENLOADER_H
