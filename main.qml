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
    {   id:background
        anchors.fill: parent
        source: "/Resized_images/main_Screen background.jpg"
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

// Image path need to be change according to directory

    Component.onCompleted:  {

        gridview.model.append ({
                                   name: "Radio",
                                   portrait: "/Resized_images/radio.png"
                               });
        gridview.model.append ({
                                   name: "Media Player",
                                   portrait: "/Resized_images/media.png"
                               });
        gridview.model.append ({
                                   name: "Phone",
                                   portrait: "/Resized_images/phone.png"
                               });
        gridview.model.append ({
                                   name: "Navigation",
                                   portrait: "/Resized_images/GPS.png"
                               });
        gridview.model.append ({
                                   name: "Setting",
                                   portrait: "/Resized_images/Settings.png"
                               });
    }


    Component
    {
        id:contactDelegate

        GridViewDelegate
        {
            cell_Width: gridview.cellWidth
            cell_Height: gridview.cellHeight
            root_width: root.width
            image_path: portrait
            text_name: name

        }
    }


    GridView
    {
        id: gridview
        anchors.fill: parent
        anchors.margins:parent.width/16
        cellWidth:parent.width/3.7777778
        cellHeight:parent.height/2.533333
        clip: true
        model: ListModel {}
        delegate: contactDelegate
        focus:true
    }
}
