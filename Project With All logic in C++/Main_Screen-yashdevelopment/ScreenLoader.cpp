#include "ScreenLoader.h"



ScreenLoader::ScreenLoader(QObject *parent) : QObject(parent)
{

}

void ScreenLoader::getEnginePointer(QQmlApplicationEngine * engpointer, QQuickWindow * windowptr)
{
    enginerefrenceptr = engpointer;
    mainWindowalisptr = windowptr;
    refreshObject.aliasOfengine(engpointer);
}

void ScreenLoader::deleteobject(QQuickItem  *pointerOfScreen)
{
    pointerOfMainScreen = pointerOfScreen;
}


void ScreenLoader::onReceived(QVariant value)
{
    cout<<"value:"<<value.toInt()<<endl;

    if (value.toInt() == 0)
    {
        QQmlComponent* radioQmlComponent = new QQmlComponent(enginerefrenceptr,"qrc:/RadioScreen.qml");
        QQuickItem* radioScreenRootItem = qobject_cast<QQuickItem*>(radioQmlComponent->create());
        radioScreenRootItem->setParentItem(mainWindowalisptr->contentItem());
        delete pointerOfMainScreen;
        QQuickItem* refreshsignalptr = radioScreenRootItem->findChild<QQuickItem*>("refreshItem");
        QObject::connect(refreshsignalptr,SIGNAL(refresh()), &refreshObject,SLOT(onRefreshsignal()));
        refreshObject.refreshcall(radioScreenRootItem);
    }
    else if(value.toInt() == 1)
     {
        QQmlComponent* mediaQmlComponent = new QQmlComponent(enginerefrenceptr,"qrc:/MediaPlayerScreen.qml");
        QQuickItem* mediaScreenRootItem = qobject_cast<QQuickItem*>(mediaQmlComponent->create());
        mediaScreenRootItem->setParentItem(mainWindowalisptr->contentItem());
        delete pointerOfMainScreen;
        QQuickItem* refreshsignalptr = mediaScreenRootItem->findChild<QQuickItem*>("refreshItem");
        QObject::connect(refreshsignalptr,SIGNAL(refresh()), &refreshObject,SLOT(onRefreshsignal()));
        refreshObject.refreshcall(mediaScreenRootItem);
     }

    else if(value.toInt() == 2)
        {
            QQmlComponent* phoneQmlComponent = new QQmlComponent(enginerefrenceptr, QUrl("qrc:/PhoneScreen.qml"));
            QQuickItem* phoneScreenRootItem = qobject_cast<QQuickItem*>(phoneQmlComponent->create());
            phoneScreenRootItem->setParentItem(mainWindowalisptr->contentItem());
            delete pointerOfMainScreen;
            QQuickItem* refreshsignalptr = phoneScreenRootItem->findChild<QQuickItem*>("refreshItem");
            QObject::connect(refreshsignalptr,SIGNAL(refresh()), &refreshObject,SLOT(onRefreshsignal()));
            refreshObject.refreshcall(phoneScreenRootItem);
        }
    else if(value.toInt() == 3)
       {
            QQmlComponent* navigationQmlComponent = new QQmlComponent(enginerefrenceptr, QUrl("qrc:/RadioScreen.qml"));
            QQuickItem* navigationScreenRootItem = qobject_cast<QQuickItem*>(navigationQmlComponent->create());
            navigationScreenRootItem->setParentItem(mainWindowalisptr->contentItem());
            delete pointerOfMainScreen;
            QQuickItem* refreshsignalptr = navigationScreenRootItem->findChild<QQuickItem*>("refreshItem");
            QObject::connect(refreshsignalptr,SIGNAL(refresh()), &refreshObject,SLOT(onRefreshsignal()));
            refreshObject.refreshcall(navigationScreenRootItem);
       }
    else if(value.toInt() == 4)
       {
            QQmlComponent* settingQmlComponent = new QQmlComponent(enginerefrenceptr, QUrl("qrc:/SettingScreen.qml"));
            QQuickItem* settingScreenRootItem = qobject_cast<QQuickItem*>(settingQmlComponent->create());
            settingScreenRootItem->setParentItem(mainWindowalisptr->contentItem());
            delete pointerOfMainScreen;
            QQuickItem* refreshsignalptr = settingScreenRootItem->findChild<QQuickItem*>("refreshItem");
            QObject::connect(refreshsignalptr,SIGNAL(refresh()), &refreshObject,SLOT(onRefreshsignal()));
            refreshObject.refreshcall(settingScreenRootItem);
       }
   else
        {
            cout<<"Qml not Found"<<endl;
        }

}

void ScreenLoader::onPressed(QVariant indexnum)
{
    QQuickItem* gridviewptr = pointerOfMainScreen->findChild<QQuickItem*>("gridview");
    auto contentItem = gridviewptr->property("contentItem").value<QQuickItem *>();
       auto contentItemChildren = contentItem->childItems();
       auto childItem = contentItemChildren[indexnum.toInt()];
       QQuickItem* gridrect = childItem->findChild<QQuickItem*>("rectangle");
       QQuickItem* gridtext = childItem->findChild<QQuickItem*>("textId");
       QQuickItem* gridicon = childItem->findChild<QQuickItem*>("myIcon");
       if (gridrect != nullptr && gridtext != nullptr && gridicon != nullptr)
             {
                gridrect->setProperty("radius",15);
                gridrect->setProperty("color","lightblue");
                gridtext->setProperty("opacity",0.3);
                gridicon->setProperty("opacity",0.3);
       }
}

void ScreenLoader::onEntered(QVariant indexnum)
{
    QQuickItem* gridviewptr = pointerOfMainScreen->findChild<QQuickItem*>("gridview");
    auto contentItem = gridviewptr->property("contentItem").value<QQuickItem *>();
       auto contentItemChildren = contentItem->childItems();
       auto childItem = contentItemChildren[indexnum.toInt()];
       QQuickItem* gridrect = childItem->findChild<QQuickItem*>("rectangle");
       QQuickItem* gridtext = childItem->findChild<QQuickItem*>("textId");
       QQuickItem* gridicon = childItem->findChild<QQuickItem*>("myIcon");
       if (gridrect != nullptr && gridtext != nullptr && gridicon != nullptr)
             {
                gridrect->setProperty("radius",15);
                gridrect->setProperty("color","lightblue");
                //gridrect->setProperty("border.color","skyblue");
       }

}

void ScreenLoader::onExited(QVariant indexnum)
{
    QQuickItem* gridviewptr = pointerOfMainScreen->findChild<QQuickItem*>("gridview");
    auto contentItem = gridviewptr->property("contentItem").value<QQuickItem *>();
       auto contentItemChildren = contentItem->childItems();
       auto childItem = contentItemChildren[indexnum.toInt()];
       QQuickItem* gridrect = childItem->findChild<QQuickItem*>("rectangle");
       QQuickItem* gridtext = childItem->findChild<QQuickItem*>("textId");
       QQuickItem* gridicon = childItem->findChild<QQuickItem*>("myIcon");
       if (gridrect != nullptr && gridtext != nullptr && gridicon != nullptr)
             {

                gridrect->setProperty("color","Transparent");
                gridtext->setProperty("opacity",1);
                gridicon->setProperty("opacity",1);
                //gridrect->setProperty("border.color","Transparent");
       }

}
