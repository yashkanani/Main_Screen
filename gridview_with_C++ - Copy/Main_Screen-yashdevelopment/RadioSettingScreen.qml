import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    property int itemWidth: root.width
    property int itemHeight: root.height
    id:keypadroot
    visible: true
    width: itemWidth
    height: itemHeight

    HomeButton
    {

    }
    Label
    {
        id:radio
        anchors.top: keypadroot.top
        anchors.horizontalCenter: keypadroot.horizontalCenter
        anchors.topMargin:keypadroot.height/12
        text: "Radio Setting"
        font.italic: true
        font.pixelSize: keypadroot.height/15
        color: "Black"
    }
    Label
    {
        id:volume
        anchors.top: keypadroot.top
        anchors.left: keypadroot.left
        anchors.leftMargin: keypadroot.height/2
        anchors.topMargin:keypadroot.height/6
        text: "Treble:"
        font.pixelSize: keypadroot.height/19
        color: "Black"
        SliderSetting
        {
            anchors.left:parent.left
            anchors.leftMargin: volume.width+50
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Label
    {
        id:balance
        anchors.top: volume.bottom
        anchors.left: keypadroot.left
        anchors.leftMargin: keypadroot.height/2
        anchors.topMargin:keypadroot.height/5.95
        text: "Balance:"
        font.pixelSize: keypadroot.height/19
        color: "Black"
        SliderSetting
        {
            anchors.left:parent.left
            anchors.leftMargin:volume.width+50
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Label
    {
        id:bass
        anchors.top: balance.bottom
        anchors.left: keypadroot.left
        anchors.leftMargin: keypadroot.height/2
        anchors.topMargin:keypadroot.height/5.9
        text: "Bass:"
        font.pixelSize: keypadroot.height/19
        color: "Black"
        SliderSetting
        {
            anchors.left:parent.left
            anchors.leftMargin: volume.width+50
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Label
    {
        id:brightness
        anchors.top: bass.bottom
        anchors.left: keypadroot.left
        anchors.leftMargin: keypadroot.height/2
        anchors.topMargin:keypadroot.height/5.85
        text: "Brightness:"
        font.pixelSize: keypadroot.height/19
        color: "Black"
        SliderSetting
        {
            anchors.left:parent.left
            anchors.leftMargin:volume.width+50
            anchors.verticalCenter: parent.verticalCenter
        }
    }

}
