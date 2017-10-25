#include "RefreshClass.h"

RefreshClass::RefreshClass(QObject *parent) : QObject(parent)
{

}
void RefreshClass:: aliasOfengine(QQmlApplicationEngine  *enginealis)
{
    enginealisptr = enginealis;
}

void RefreshClass::refreshcall(QQuickItem *pointer)
{
    currentScreenPointer = pointer;
}

void RefreshClass:: onRefreshsignal()
{   cout<<"refresh signal capture"<<endl;
    delete currentScreenPointer;
    currentScreenPointer = nullptr;


    QObject *object = enginealisptr->rootObjects().at(0);
    QQuickWindow* mainWindow =qobject_cast <QQuickWindow*> (object);

    QQmlComponent* MainScreenQmlComponent=new QQmlComponent(enginealisptr,"qrc:/MainScreen.qml");
    QQuickItem* MainScreenRootItem=qobject_cast<QQuickItem*>(MainScreenQmlComponent->create());
    MainScreenRootItem->setParentItem(mainWindow->contentItem());

    screenLoader = new ScreenLoader();
    screenLoader->getEnginePointer(enginealisptr,mainWindow);
    screenLoader->deleteobject(MainScreenRootItem);
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

    if(mainWindow != nullptr)
    {
        std::cout<<"inside the main"<<std::endl;
        if (gridviewptr != nullptr)
        {
           std:: cout<< "inside the gridview"<<std::endl;
            gridviewptr->setProperty("model",QVariant::fromValue(&item1));
        }

    }

    QObject::connect(gridviewptr,
                     SIGNAL(qmlSignalReceived(QVariant)),
                     screenLoader,
                     SLOT(onReceived(QVariant)));
    QObject::connect(gridviewptr,
                     SIGNAL(pressedsignal(QVariant)),
                     screenLoader,
                     SLOT(onPressed(QVariant)));

    QObject::connect(gridviewptr,
                     SIGNAL(entersignal(QVariant)),
                     screenLoader,
                     SLOT(onEntered(QVariant)));
    QObject::connect(gridviewptr,
                     SIGNAL(exitsignal(QVariant)),
                     screenLoader,
                     SLOT(onExited(QVariant)));


}
