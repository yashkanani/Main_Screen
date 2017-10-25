#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include "ListViewmodel.h"
#include <iostream>
#include <QQuickView>
#include <QQmlContext>
#include <QQuickItem>
#include<ScreenLoader.h>


using namespace std;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QObject *object =engine.rootObjects().at(0);
    QQuickWindow* mainWindow =qobject_cast <QQuickWindow*> (object);

    QQmlComponent* MainScreenQmlComponent=new QQmlComponent(&engine,"qrc:/MainScreen.qml");
    QQuickItem* MainScreenRootItem=qobject_cast<QQuickItem*>(MainScreenQmlComponent->create());
    MainScreenRootItem->setParentItem(mainWindow->contentItem());

    ScreenLoader screenLoader;
    screenLoader.getEnginePointer(&engine,mainWindow);
    screenLoader.deleteobject(MainScreenRootItem);

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


    QObject::connect(gridviewptr,
                     SIGNAL(qmlSignalReceived(QVariant)),
                     &screenLoader,
                     SLOT(onReceived(QVariant)));
    QObject::connect(gridviewptr,
                     SIGNAL(pressedsignal(QVariant)),
                     &screenLoader,
                     SLOT(onPressed(QVariant)));

    QObject::connect(gridviewptr,
                     SIGNAL(entersignal(QVariant)),
                     &screenLoader,
                     SLOT(onEntered(QVariant)));
    QObject::connect(gridviewptr,
                     SIGNAL(exitsignal(QVariant)),
                     &screenLoader,
                     SLOT(onExited(QVariant)));

    return app.exec();
}
