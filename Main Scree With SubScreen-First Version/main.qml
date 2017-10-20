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


    Text
    {
        font.pixelSize: root.width/30
        anchors.top:parent.top
        anchors.right:parent.right
        id: timeText
        color: "#2b2f3b"
        text: Qt.formatTime(new Date(),"hh:mm:ss")
    }


    Timer
    {
        id: timer
        interval: 1000
        repeat: true
        running: true
        onTriggered:
        {
            timeText.text =  Qt.formatTime(new Date(),"hh:mm:ss")
        }
    }

    Component.onCompleted:
         {
             console.log("Component onCompleted")
             loader.setSource("MainScreen.qml")
         }

    function changeScreen(value)
        {
            console.log(value)
            loader.setSource(value)
        }

}
