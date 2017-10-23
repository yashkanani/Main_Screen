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
    strcutdata radio,media,phone,navigation,setting;

    radio.icon ="/Resized_images/radio.png";
    radio.textname="Radio";
    item1.addEntry(radio);

    media.icon = "/Resized_images/media.png";
    media.textname="Media Player";
    item1.addEntry(media);

    phone.icon = "/Resized_images/phone.png";
    phone.textname = "Phone";
    item1.addEntry(phone);

    navigation.icon = "/Resized_images/GPS.png";
    navigation.textname = "Navigation";
    item1.addEntry(navigation);

    setting.icon="/Resized_images/Settings.png";
    setting.textname = "Setting";
    item1.addEntry(setting);

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
