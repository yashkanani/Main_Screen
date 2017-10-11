import QtQuick 2.8

Component
{
    Item
    {
        width: grid.cellWidth;
        height: grid.cellHeight
        Column
        {
            anchors.fill: grid.cell
            Image
            {
                source: portrait;
                anchors.top:parent.top
                anchors.left: parent.left
                anchors.topMargin:root.height/4.0
                anchors.leftMargin: root.width/10
            }
            Text
            {
                text: name;
                font.pixelSize: root.width/35
                anchors.top:parent.top
                anchors.left: parent.left
                anchors.topMargin:root.height/2.8
                anchors.leftMargin: root.width/10
                color: "#34495E"
            }
        }
    }
}
