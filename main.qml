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

    Image
    {
        id:background
        anchors.fill: parent
        source: "qrc:/images/main_Screen background.jpg"
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

    Text
    {
        id:date
        font.pixelSize: root.width/30
        anchors.top:parent.top
        anchors.left:parent.left
        text: Qt.formatDateTime(new Date(), "MM/dd/yy")
        color: "#2b2f3b"
    }

    Component.onCompleted:
    {

        gridview.model.append ({
            name: "Radio",
            portrait: "qrc:/images/radio.png"
        });
        gridview.model.append ({
            name: "Media Player",
           portrait: "qrc:/images/media.png"
        });
        gridview.model.append ({
            name: "Phone",
            portrait: "qrc:/images/phone.png"
        });
        gridview.model.append ({
            name: "Navigation",
            portrait: "qrc:/images/GPS.png"
        });
        gridview.model.append ({
            name: "Setting",
            portrait: "qrc:/images/Settings.png"
        });
    }


    Item
    {
        width:parent.width/1.185
        height: parent.height/1.266
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: root.height/9.5
        anchors.leftMargin: root.width/12.8
        GridViewDelegate
        {
            id: contactDelegate
        }
     }

    GridView
    {
        id: gridview
        anchors.fill: parent
        cellWidth: parent.width/3.0; cellHeight: parent.height/2.53
        model: ListModel {}
        delegate: contactDelegate
    }
}
