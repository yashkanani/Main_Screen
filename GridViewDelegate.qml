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

    id:itemId
    width: cell_Width
    height: cell_Height
    anchors.margins: 12.5

    Image
    {
        id: myIcon;
        anchors.verticalCenter: parent.verticalCenter;
        anchors.horizontalCenter: parent.horizontalCenter;
        source: image_path
    }
    Text
    {
        font.pixelSize: root.width/35
        color: "#34495E"
        anchors { bottom: parent.bottom;  horizontalCenter: parent.horizontalCenter }
        text: text_name
    }
}
