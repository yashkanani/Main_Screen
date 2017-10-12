import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick 2.7

Item
{
    property int cell_Width: 0
    property int cell_Height: 0
    property int root_width: 0
    property string image_path: "value.png"
    property string text_name: "Text Not Found"
    property bool hover_status: false

    id:itemId
    width: cell_Width
    height: cell_Height
    anchors.margins: 12.5


    Rectangle
    {
        id:rectangle
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

        onEntered:
        {
            rectangle.radius=15
            rectangle.color="lightblue"
            rectangle.border.color = "skyblue"
            console.log("onhovor")
        }

        onExited:
        {
            rectangle.color="Transparent"
            rectangle.border.color = "Transparent"
            myIcon.opacity=1
            textId.opacity =1
            console.log("offhovor")

        }

        onPressed:
        {
            rectangle.radius=15
            rectangle.color="lightblue"
            myIcon.opacity=0.3
            textId.opacity =0.3
            console.log("onpressed")
        }

        onReleased:
        {
            rectangle.color="lightblue"
            myIcon.opacity=1
            textId.opacity = 1
            console.log("onreleased")
        }

    }


    Image
    {
        id: myIcon;
        anchors.verticalCenter: parent.verticalCenter;
        anchors.horizontalCenter: parent.horizontalCenter;
        source: image_path
    }


    Text
    {
        id:textId
        font.pixelSize: root.width/35
        color: "#34495E"
        anchors { bottom: parent.bottom;  horizontalCenter: parent.horizontalCenter }
        text: text_name
    }

}
