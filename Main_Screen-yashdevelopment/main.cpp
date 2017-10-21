#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include "ListViewmodel.h"
#include <iostream>
#include <QQuickView>
#include <QQmlContext>
#include <QQuickItem>



using namespace std;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    
    QObject *object =engine.rootObjects().at(0);
    QQuickWindow* mainWindow =qobject_cast <QQuickWindow*> (object);


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

    QQuickItem* gridviewptr = mainWindow->findChild<QQuickItem*>("gridview");

    if(mainWindow != nullptr)
    {
        cout<<"inside the main"<<endl;
        if (gridviewptr != nullptr)
        {
            cout<< "inside the gridview"<<endl;
            gridviewptr->setProperty("model",QVariant::fromValue(&item1));
        }

    }

    return app.exec();
}
