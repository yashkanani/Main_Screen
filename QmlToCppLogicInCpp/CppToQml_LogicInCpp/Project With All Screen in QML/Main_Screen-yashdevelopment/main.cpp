#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include "ListViewmodel.h"
#include <iostream>
#include <QQuickView>
#include <QQmlContext>
#include <QQuickItem>
#include <RefreshClass.h>
#include<ScreenLoader.h>



using namespace std;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    RefreshClass refreshObject;
    refreshObject.aliasOfengine(&engine);

    QObject *object =engine.rootObjects().at(0);
    QQuickWindow* mainWindow =qobject_cast <QQuickWindow*> (object);

    QQmlComponent* MainScreenQmlComponent=new QQmlComponent(&engine,"qrc:/MainScreen.qml");
    QQuickItem* MainScreenRootItem=qobject_cast<QQuickItem*>(MainScreenQmlComponent->create());
    MainScreenRootItem->setParentItem(mainWindow->contentItem());



    ScreenLoader screenLoader;
    ListViewmodel item1;
    strcutdata griddata;


    griddata.icon ="/Resized_images/radio.png";
    griddata.textname="Radio";
    item1.addEntry(griddata);

    griddata.icon = "/Resized_images/media.png";
    griddata.textname="Media Player";
    item1.addEntry(griddata);

    griddata.icon = "/Resized_images/phone.png";
    griddata.textname = "Phone";
    item1.addEntry(griddata);

    griddata.icon = "/Resized_images/GPS.png";
    griddata.textname = "Navigation";
    item1.addEntry(griddata);

    griddata.icon="/Resized_images/Settings.png";
    griddata.textname = "Setting";
    item1.addEntry(griddata);

    QQuickItem* gridviewptr = MainScreenRootItem->findChild<QQuickItem*>("gridview");


    if(MainScreenRootItem != nullptr)
    {
        cout<<"inside the main"<<endl;
        if (gridviewptr != nullptr)
        {
            cout<< "inside the gridview"<<endl;
            gridviewptr->setProperty("model",QVariant::fromValue(&item1));
        }

    }

    QQuickItem* refreshsignalptr = mainWindow->findChild<QQuickItem*>("refreshSignal");

    QObject::connect(refreshsignalptr,
                     SIGNAL(refresh()),
                     &refreshObject,
                     SLOT(onRefreshsignal()));
    //*********************************************************************************//
    QObject::connect(gridviewptr,
                     SIGNAL(qmlSignalReceived(QVariant)),
                     &screenLoader,
                     SLOT(onReceived(QVariant)));

    return app.exec();
}
