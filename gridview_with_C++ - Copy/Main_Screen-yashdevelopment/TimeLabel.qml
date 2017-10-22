import QtQuick 2.0

Item {
    property int time_Width;
    property int time_height;
    property int font: font.pixelSize

    width:time_Width
    height:time_height

    Text
    {
        font.pixelSize: parent.width/30
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

}
