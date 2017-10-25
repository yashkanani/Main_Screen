import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick 2.7


Window
{
    id:root
    visible: true
    width: 640
    height: 380
    title: qsTr("Hello World")
    Loader
        {
            id: loader
        }

    function changeScreen(value)
    {
        console.log(value)
        loader.setSource(value)
        if(value === "MainScreen.qml")
            refreshItem.refresh()
    }

}
