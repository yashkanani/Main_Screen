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
        id: radio
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/2.60
                height: parent.height/7
                width: parent.width/4
                Text{
                    anchors.centerIn: radio
                    text: "Radio"
                    font.pixelSize: 18
                }
    }
    Button{
        id: mediaplayer
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/1.85
                height: parent.height/7
                width: parent.width/4
                Text{
                    anchors.centerIn: mediaplayer
                    text: "Media Player"
                    font.pixelSize: 18
                }

    }
    Button{
        id: phone
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/1.44
                height: parent.height/7
                width: parent.width/4
                Text{
                    anchors.centerIn: phone
                    text: "Phone"
                    font.pixelSize: 18
                }
                onClicked:
                {
                    phoenviewId.visible = true;
                    phoenviewId.enabled = true;
                }

    }

    Button{
        id: navigation
        anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: parent.height/1.18
                height: parent.height/7
                width: parent.width/4

                Text{
                    anchors.centerIn: navigation
                    text: "Navigation"
                    font.pixelSize: 18
                }
    }

//   ListView
//   {
//   id:phoenviewId
//   anchors.top: parent.top
//   anchors.right: parent.right
//   height: 270
//   width: 400
//   anchors.topMargin: 130
//   anchors.rightMargin: 50
//   model:phonelistmodeID
//   delegate: phoneDeligateID
//   clip: true
//   spacing: 6
//   visible: false
//   enabled: false

//   }

// ListModel
// {
//     id:phonelistmodeID

//    ListElement { textname: "Connect Phone"}
//    ListElement { textname: "Bluetooth Device List"}
//    ListElement { textname: " Ring Tone"}
//    ListElement { textname: "Automatic Phone Sync"}
// }

// Component {
//     id: phoneDeligateID
//     Item {
//         width: 400; height: 50

//         Column {
//             Rectangle
//                {
//                    id:rect
//                 Text
//                        {   id:phoneSettingtext
//                            text:textname;
//                            anchors.centerIn: parent
//                            font.pixelSize: 20
//                            color: "black"
//                        }
//                 MouseArea
//                 {
//                     anchors.fill: rect
//                     id:mousearea
//                     hoverEnabled: true;

//                     onEntered:
//                     {
//                         rect.radius=7
//                         rect.color="lightblue"
//                         rect.border.color = "skyblue"

//                     }

//                     onExited:
//                     {   rect.radius=3
//                         rect.color="#d2eff9"
//                         rect.border.color = "#d2eff9"
//                     }
//                     onPressed:
//                     {
//                         rect.radius=15
//                         rect.color="lightblue"
//                         rect.border.color = "skyblue"
//                         phoneSettingtext.opacity = 0.3
//                     }

//                     onReleased:
//                     {
//                         rect.radius=3
//                         rect.color="#d2eff9"
//                         rect.border.color = "skyblue"
//                         phoneSettingtext.opacity = 1
//                     }
//                     onCanceled:
//                     {
//                         rect.radius=3
//                         rect.color="#d2eff9"
//                         rect.border.color = "skyblue"
//                         phoneSettingtext.opacity = 1
//                     }
//                 }
//                 color: "#d2eff9";
//                 height: 50;
//                 width: 400;
//                 radius: 3
//                 }

//         }
//     }
// }

 Item
 {
     id:keypadroot
     visible: true
     width: root.width
     height: root.height
     Label
     {
         id:radiolable
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
         Slider
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
         Slider
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
         Slider
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
         Slider
         {
             anchors.left:parent.left
             anchors.leftMargin:volume.width+50
             anchors.verticalCenter: parent.verticalCenter
         }
     }
 }
}
