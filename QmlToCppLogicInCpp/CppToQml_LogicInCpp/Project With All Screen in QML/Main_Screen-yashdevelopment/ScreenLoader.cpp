#include "ScreenLoader.h"


ScreenLoader::ScreenLoader(QObject *parent) : QObject(parent)
{

}

void ScreenLoader::onReceived(QVariant value)
{
    cout<<"value:"<<value.toInt()<<endl;
}
