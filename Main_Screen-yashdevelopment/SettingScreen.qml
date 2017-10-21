import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id:settingScreenId
    visible: true
    width: root.width
    height: root.height

    BackgroundImage
    {
        id: backgroundImage
    }
    HomeButton
    {
    id:homebuttonid
    }

    Button{
        id: usb
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/4.30
                height: parent.height/7
                width: parent.width/4

                Text{
                    anchors.centerIn: usb
                    text: "USB"
                    font.pixelSize: 18
                }


    }
    Button{
        id: sd
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/2.60
                height: parent.height/7
                width: parent.width/4
                Text{
                    anchors.centerIn: sd
                    text: "SD"
                    font.pixelSize: 18
                }
    }
    Button{
        id: cd
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/1.85
                height: parent.height/7
                width: parent.width/4
                Text{
                    anchors.centerIn: cd
                    text: "CD/DVD"
                    font.pixelSize: 18
                }

    }
    Button{
        id: aux
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/1.44
                height: parent.height/7
                width: parent.width/4
                Text{
                    anchors.centerIn: aux
                    text: "AUX"
                    font.pixelSize: 18
                }
    }

    Button{
        id: bluetooth
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/1.18
                height: parent.height/7
                width: parent.width/4

                Text{
                    anchors.centerIn: bluetooth
                    text: "Bluetooth"
                    font.pixelSize: 18
                }
    }
}
