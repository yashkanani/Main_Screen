import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id:phonescreenid
    visible: true
    width: root.width
    height: root.height

    BackgroundImage
    {
        id: backgroundImage
    }

    Label {
        id:phoneNameId
        anchors.left: dialId.left
        anchors.top:phonescreenid.top
        anchors.leftMargin: phonescreenid.width/64
        anchors.topMargin: phonescreenid.height/4.75
        text: "HYS's iPhone"
        font.pixelSize: phonescreenid.height/19
        color: "Black"
    }

    Label {
        id:batteryId
        anchors.left: dialId.left
        anchors.top:phonescreenid.top
        anchors.leftMargin: phonescreenid.width/64
        anchors.topMargin: phonescreenid.height/3.1666667
        text: "Battery: 89%"
        font.pixelSize: phonescreenid.height/19
        color: "Black"
    }

    Label {
        id:careerNameId
        anchors.left: dialId.left
        anchors.top:phonescreenid.top
        anchors.leftMargin: phonescreenid.width/64
        anchors.topMargin: phonescreenid.height/2.375
        text: "T-Mobile"
        font.pixelSize: phonescreenid.height/19
        color: "Black"
    }



    Button
    {
        id:dialId
        anchors.bottom:parent.bottom
        anchors.bottomMargin: phonescreenid.height/63.3
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.horizontalCenterOffset: -phonescreenid.width/6.73
        width: phonescreenid.width/3.5
        height: phonescreenid.height/7.7
        Text
        {
            anchors.centerIn: dialId
            text: qsTr("DIAL")
            font.pixelSize: phonescreenid.height/21
            fontSizeMode: Text.Fit
            color: "#595959"
        }
        onClicked:
        {
        root.changeScreen("DialScreen.qml")
        }
    }

    Button
    {
        id:contactID
        anchors.bottom:parent.bottom
        anchors.bottomMargin: phonescreenid.height/63.3
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.horizontalCenterOffset: phonescreenid.width/6.73
        width: phonescreenid.width/3.5
        height: phonescreenid.height/7.7
        Text
        {
            anchors.centerIn: contactID
            text: qsTr("CONTACTS")
            font.pixelSize: phonescreenid.height/21
            fontSizeMode: Text.Fit
            color: "#595959"
        }
    }
}
