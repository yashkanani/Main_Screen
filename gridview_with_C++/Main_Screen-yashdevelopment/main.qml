import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick 2.7


Window
{
    id:root
    visible: true
    width: 640
    height: 380
    title: qsTr("HMI Screen")

    Image
    {   id:background
        anchors.fill: parent
        source: "/Resized_images/main_Screen background.jpg"
    }
    Item
    {
        id: refreshItem
        objectName: "refresh"
        signal refresh(var refresh)
    }
    TimeLabel
    {
        time_Width:root.width
        time_height: root.height
        anchors.top:parent.top
        anchors.right:parent.right
        font: parent.width/30
    }

    Loader
    {
        id: loader
        onLoaded:
        {
            console.log("Loader finished")

        }
    }
    Component.onCompleted:
    {
        loader.setSource("HMIScreen.qml")
    }

    function changeScreen(value)
    {
        if(value==="SettingScreen")
        {
            SettingScreen.visible=true;
            root.visible=false;
        }

        loader.setSource(value)
        refreshItem.refresh(1);
    }


}
