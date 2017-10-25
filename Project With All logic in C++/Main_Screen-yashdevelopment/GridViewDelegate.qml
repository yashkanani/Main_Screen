import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick 2.7

Item
{
    property int cell_Width: 0
    property int cell_Height: 0
    property int root_width: 0
    property string image_path:"value.png"
    property string text_name: "Text Not Found"
    property bool hover_status: false

    objectName: parent.objectName
    id:itemId
    width: cell_Width
    height: cell_Height
    anchors.margins: 12.5


    Rectangle
    {
        id:rectangle
        objectName: "rectangle"
        color: "Transparent"
        anchors.fill: itemId
        border.color: Qt.lighter(color, 1.1)
        border.width: 2.5

    }

    MouseArea
    {
        anchors.fill: rectangle
        id:mousearea
        hoverEnabled: true;
        objectName: "mousearea"
        onEntered:
        {
            gridview.entersignal(index)
            rectangle.border.color = "skyblue"
        }

        onExited:
        {
            gridview.exitsignal(index)
            rectangle.border.color = "Transparent"

        }

        onPressed:
        {
            gridview.pressedsignal(index)
        }

        onReleased:
        {
           gridview.qmlSignalReceived(index)
        }

    }


    Image
    {
        id: myIcon;
        objectName: "myIcon"
        anchors.verticalCenter: parent.verticalCenter;
        anchors.horizontalCenter: parent.horizontalCenter;
        source: image_path
    }


    Text
    {
        id:textId
        objectName: "textId"
        font.pixelSize: 640/35
        color: "#34495E"
        anchors { bottom: parent.bottom;  horizontalCenter: parent.horizontalCenter }
        text: text_name
    }

}
