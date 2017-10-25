import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id:mediaPlayerScreenID
    width: 640
    height: 380

    BackgroundImage
    {
        id: backgroundImage
    }

    TimesetQML
    {
        id:timersetQML
    }

    HomeButton
    {
    id:homebuttonid
    objectName: "refreshItem"
    }
    Label
    {
        id:singername

        anchors.top:parent.top
        anchors.right: parent.right
        anchors.topMargin: parent.height/5.5
        anchors.rightMargin: parent.width/1.9
        text: "Artis: Akon"
        font.pixelSize: parent.height/19
        color: "Black"
    }

    Label
    {
        id:songasname
        anchors.top:parent.top
        anchors.right: parent.right
        anchors.topMargin: parent.height/5.5
        anchors.rightMargin: parent.width/8
        text: "Track: Chammak Chalo..."
        font.pixelSize: parent.height/19
        color: "Black"
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
    Image
    {
        id:trackbuttons
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: parent.height/20
        anchors.right: parent.right
        anchors.rightMargin: parent.width/12
        height: parent.height/8
        width: parent.width/2
        source: "Images/trackbuttons.png"
    }

    Rectangle
       {
           id: rewind
           anchors.left: parent.left
           anchors.leftMargin: parent.width/2.4
           anchors.bottom:  parent.bottom
           anchors.bottomMargin: parent.height/20
           width: parent.width/10.66
           height: parent.height/8
           color: "Transparent"
       }

    MouseArea
    {
        anchors.fill: rewind
        hoverEnabled: true

    onEntered: {
        rewind.border.width=5
        rewind.border.color="black"
                    rewind.opacity=0.5
                    rewind.radius=10
    }
    onExited: {
        rewind.border.color="Transparent"
                    rewind.opacity=1

    }
    onPressed: {
        rewind.color="skyblue"
                    rewind.opacity=0.3
                    rewind.radius=10
    }

    onReleased: {
        rewind.color="Transparent"
        rewind.border.color="black"
                   rewind.opacity=0.5
        rewind.border.width=5
         rewind.radius=10
    }


    }

    Rectangle
    {
        id:play
        anchors.left: parent.left
        anchors.leftMargin: parent.width/1.93

        anchors.bottom:  parent.bottom
        anchors.bottomMargin: parent.height/20
        width: parent.width/10.66
        height: parent.height/8
        color: "Transparent"
    }

    MouseArea
    {
        anchors.fill: play
        hoverEnabled: true

    onEntered: {
         play.border.width=5
         play.border.color="black"
                     play.opacity=0.5
                     play.radius=10
    }
    onExited: {
         play.border.color="Transparent"
                     play.opacity=1

    }
    onPressed: {
         play.color="skyblue"
                     play.opacity=0.3
                     play.radius=10
    }

    onReleased: {
         play.color="Transparent"
         play.border.color="black"
                    play.opacity=0.5
         play.border.width=5
          play.radius=10
    }


    }


    Rectangle
    {
        id:stop
        anchors.left: parent.left
        anchors.leftMargin: parent.width/1.615

        anchors.bottom:  parent.bottom
        anchors.bottomMargin: parent.height/20
        width: parent.width/10.66
        height: parent.height/8
        color: "Transparent"
    }

    MouseArea
    {
        anchors.fill: stop
        hoverEnabled: true

    onEntered: {
         stop.border.width=5
         stop.border.color="black"
                     stop.opacity=0.5
                     stop.radius=10
    }
    onExited: {
         stop.border.color="Transparent"
                     stop.opacity=1

    }
    onPressed: {
         stop.color="skyblue"
                     stop.opacity=0.3
                     stop.radius=10
    }

    onReleased: {
         stop.color="Transparent"
         stop.border.color="black"
                    stop.opacity=0.5
         stop.border.width=5
          stop.radius=10
    }


    }


    Rectangle
    {
        id:pause
        anchors.left: parent.left
        anchors.leftMargin: parent.width/1.385

        anchors.bottom:  parent.bottom
        anchors.bottomMargin: parent.height/20
        width: parent.width/10.66
        height: parent.height/8
        color: "Transparent"
    }

    MouseArea
    {
        anchors.fill: pause
        hoverEnabled: true

    onEntered: {
         pause.border.width=5
         pause.border.color="black"
                     pause.opacity=0.5
                     pause.radius=10
    }
    onExited: {
         pause.border.color="Transparent"
                     pause.opacity=1

    }
    onPressed: {
         pause.color="skyblue"
                     pause.opacity=0.3
                     pause.radius=10
    }

    onReleased: {
         pause.color="Transparent"
         pause.border.color="black"
                    pause.opacity=0.5
         pause.border.width=5
          pause.radius=10
    }


    }


    Rectangle
    {

        id:forward
        anchors.left: parent.left
        anchors.leftMargin: parent.width/1.215

        anchors.bottom:  parent.bottom
        anchors.bottomMargin: parent.height/20
        width: parent.width/10.66
        height: parent.height/8
        color: "Transparent"
    }

    MouseArea
    {
        anchors.fill: forward
        hoverEnabled: true

    onEntered: {
         forward.border.width=5
         forward.border.color="black"
                     forward.opacity=0.5
                     forward.radius=10
    }
    onExited: {
         forward.border.color="Transparent"
                     forward.opacity=1

    }
    onPressed: {
         forward.color="skyblue"
                     forward.opacity=0.3
                     forward.radius=10
    }

    onReleased: {
         forward.color="Transparent"
         forward.border.color="black"
                    forward.opacity=0.5
         forward.border.width=5
          forward.radius=10
    }


    }

    Image
    {
        id:playerbackground
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: parent.height/4
        anchors.right: parent.right
        anchors.rightMargin: parent.width/12
        height: parent.height/2
        width: parent.width/2
        source: "Images/backimage of Media.PNG"
    }


}
