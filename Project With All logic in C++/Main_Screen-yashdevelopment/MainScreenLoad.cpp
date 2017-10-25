#include "MainScreenLoad.h"

MainScreenLoad::MainScreenLoad(QObject *parent) : QObject(parent)
{

}

void MainScreenLoad::aliasOfengine(QQmlApplicationEngine *enginealias)
{
    engineptr = enginealias;
}

void MainScreenLoad::mainScreenLoad()
{
    QObject *object = (*engineptr).rootObjects().at(0);
    QQuickWindow* mainWindow =qobject_cast <QQuickWindow*> (object);

    QQmlComponent* MainScreenQmlComponent=new QQmlComponent(engineptr,"qrc:/MainScreen.qml");
    QQuickItem* MainScreenRootItem=qobject_cast<QQuickItem*>(MainScreenQmlComponent->create());
    MainScreenRootItem->setParentItem(mainWindow->contentItem());

    //ScreenLoader screenLoader;
    screenLoader.getEnginePointer(engineptr,mainWindow);
    screenLoader.deleteobject(MainScreenRootItem);


    //strcutdata griddata;


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

//    auto contentItem = gridviewptr->property("contentItem").value<QQuickItem *>();
//        auto contentItemChildren = contentItem->childItems();
//        for (auto childItem: contentItemChildren )
//        {
//            QQuickItem* gridrect = childItem->findChild<QQuickItem*>("rectangle");
//            if (gridrect != nullptr)
//             {
//                gridrect->setProperty("color","red");
//            }
//        }




    QObject::connect(gridviewptr,
                     SIGNAL(qmlSignalReceived(QVariant)),
                     &screenLoader,
                     SLOT(onReceived(QVariant)));
}
