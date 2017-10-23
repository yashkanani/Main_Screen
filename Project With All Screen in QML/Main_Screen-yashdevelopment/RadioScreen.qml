import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id:keypadroot
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

    Component.onCompleted:
    {

        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 1"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 2"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 3"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 4"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 5"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 6"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 7"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 8"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 9"});
        keypadGrid.model.append({mycolor:"#ebeef4",
                                    myText:"PRE 10"});

    }



Component
{
id: deligateId
    Rectangle
    {
    id:keypadRectangle
    width: keypadGrid.width
    height: keypadGrid.height/6.9
    color:mycolor
    radius: 10

    MouseArea
    {
        anchors.fill: keypadRectangle
        hoverEnabled: true
        onPressed:
        {
            keypadRectangle.border.color="skyblue"
            keypadRectangle.opacity=0.5
            keypadRectangle.radius=10
        }
        onReleased:
        {
            keypadRectangle.border.color="Transparent"
            keypadRectangle.opacity=1
        }

    }

    Text {
        anchors.centerIn:keypadRectangle
        text: myText
        font.pixelSize: keypadroot.height/17
        fontSizeMode: Text.Fit
    }
}

}

    ListView
    {
        id:keypadGrid
        x:keypadroot.width/300
        y:keypadroot.height/3.8
        width: keypadroot.width/3.8
        height: keypadroot.height
        spacing: keypadroot.width/300
        model:ListModel{}
        delegate:deligateId



     }





    Button
    {
        id:amButton
        x:keypadroot.width-width
        y:keypadroot.height/8
        width: keypadroot.width/8
        height: keypadroot.height/10
        Text
        {
            anchors.centerIn: amButton
            text: qsTr("AM")
            font.pixelSize: keypadroot.height/19
            fontSizeMode: Text.Fit
        }
    }
    Button
    {
        id:fmButton
        anchors.right: amButton.left
        anchors.bottom: amButton.bottom
        width: keypadroot.width/8
        height: keypadroot.height/10
        Text
        {
            anchors.centerIn: fmButton
            text: qsTr("FM")
            font.pixelSize: keypadroot.height/19
            fontSizeMode: Text.Fit
        }
    }
    Button
    {
        id:xmButton
        anchors.right: fmButton.left
        anchors.bottom: fmButton.bottom
        width: keypadroot.width/8
        height: keypadroot.height/10
        Text
        {
            anchors.centerIn: xmButton
            text: qsTr("XM")
            font.pixelSize: keypadroot.height/19
            fontSizeMode: Text.Fit
        }
    }
    Label {
        id:stationLabel
        anchors.top: xmButton.bottom
        anchors.topMargin: 25
        x:keypadroot.width/1.5
        text: "Station:WMXD"
        font.pixelSize: keypadroot.height/19
        font.italic: true
        color: "Black"
    }
    Label {
        id:frequencyLabel
        anchors.top: stationLabel.bottom
        anchors.topMargin: 15
        x:keypadroot.width/1.5
        text: "Frequency:93.5 Mhz"
        font.pixelSize: keypadroot.height/19
        font.italic: true
        color: "Black"
    }

    Button
    {
        id:browseButton
        x:keypadroot.width-width
        y:keypadroot.height-height
        width: keypadroot.width/4.5
        height: keypadroot.height/5
        Text
        {
            anchors.centerIn: browseButton
            text: qsTr("Browse")
            font.pixelSize: keypadroot.height/19
            fontSizeMode: Text.Fit
        }
    }
    Button
    {
        id:callButton
        anchors.right: browseButton.left
        anchors.bottom: browseButton.bottom
        width: keypadroot.width/4.5
        height: keypadroot.height/5
        Text
        {
            anchors.centerIn: callButton
            text: qsTr("Change Source")
            font.pixelSize: keypadroot.height/19
            fontSizeMode: Text.Fit
        }

    }
}
