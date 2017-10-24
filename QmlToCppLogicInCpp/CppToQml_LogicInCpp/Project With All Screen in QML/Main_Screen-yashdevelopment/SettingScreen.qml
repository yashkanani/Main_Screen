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
                onClicked:

                {   settingScreenId.disableLayer();
                    keypadroot.visible = true;
                    keypadroot.enabled = true;
                    settinglable.text = "Radio Setting"
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
                onClicked:

                {   settingScreenId.disableLayer();
                    mediapSettingScreenID.visible = true;
                    mediapSettingScreenID.enabled= true;
                    settinglable.text = "Media Player Setting"
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
                {   settingScreenId.disableLayer();
                    phoenviewId.visible = true;
                    phoenviewId.enabled = true;
                    settinglable.text = "Phone Setting"
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

   ListView
   {
   id:phoenviewId
   anchors.top: parent.top
   anchors.right: parent.right
   height: parent.height/1.4074
   width: parent.width/1.6
   anchors.topMargin: parent.height/2.9230
   anchors.rightMargin: parent.width/12.8
   model:phonelistmodeID
   delegate: phoneDeligateID
   clip: true
   spacing: parent.height/63.3333
   visible: false
   enabled: false
   }

 ListModel
 {
     id:phonelistmodeID

    ListElement { textname: "Connect Phone"}
    ListElement { textname: "Bluetooth Device List"}
    ListElement { textname: " Ring Tone"}
    ListElement { textname: "Automatic Phone Sync"}
 }

 Component {
     id: phoneDeligateID
     Item {
         width: settingScreenId.width/1.6; height: settingScreenId.height/7.6

         Column {
             Rectangle
                {
                    id:rect
                 Text
                        {   id:phoneSettingtext
                            text:textname;
                            anchors.centerIn: parent
                            font.pixelSize: settingScreenId.width/32
                            color: "black"
                        }
                 MouseArea
                 {
                     anchors.fill: rect
                     id:mousearea
                     hoverEnabled: true;

                     onEntered:
                     {
                         rect.radius=7
                         rect.color="lightblue"
                         rect.border.color = "skyblue"

                     }

                     onExited:
                     {   rect.radius=3
                         rect.color="#d2eff9"
                         rect.border.color = "#d2eff9"
                     }
                     onPressed:
                     {
                         rect.radius=15
                         rect.color="lightblue"
                         rect.border.color = "skyblue"
                         phoneSettingtext.opacity = 0.3
                     }

                     onReleased:
                     {
                         rect.radius=3
                         rect.color="#d2eff9"
                         rect.border.color = "skyblue"
                         phoneSettingtext.opacity = 1
                     }
                     onCanceled:
                     {
                         rect.radius=3
                         rect.color="#d2eff9"
                         rect.border.color = "skyblue"
                         phoneSettingtext.opacity = 1
                     }
                 }
                 color: "#d2eff9";
                 height: settingScreenId.height/7.6;
                 width: settingScreenId.width/1.6;
                 radius: 3
                 }

         }
     }
 }

 Item
 {
     id:keypadroot
     visible: false
     width: root.width
     height: root.height
     enabled: false

     Label
     {
         id:volume
         anchors.top: keypadroot.top
         anchors.left: keypadroot.left
         anchors.leftMargin: keypadroot.height/2
         anchors.topMargin:keypadroot.height/2.5
         text: "Treble:"
         font.pixelSize: keypadroot.height/19
         color: "Black"
         SliderQMl
         {
             anchors.left:parent.left
             anchors.leftMargin: volume.width+80
             anchors.verticalCenter: parent.verticalCenter
         }
     }
     Label
     {
         id:balance
         anchors.top: volume.bottom
         anchors.left: keypadroot.left
         anchors.leftMargin: keypadroot.height/2
         anchors.topMargin:keypadroot.height/13
         text: "Balance:"
         font.pixelSize: keypadroot.height/19
         color: "Black"
         SliderQMl
         {
             anchors.left:parent.left
             anchors.leftMargin:volume.width+80
             anchors.verticalCenter: parent.verticalCenter
         }
     }
     Label
     {
         id:bass
         anchors.top: balance.bottom
         anchors.left: keypadroot.left
         anchors.leftMargin: keypadroot.height/2
         anchors.topMargin:keypadroot.height/12.90
         text: "Bass:"
         font.pixelSize: keypadroot.height/19
         color: "Black"
         SliderQMl
         {
             anchors.left:parent.left
             anchors.leftMargin: volume.width+80
             anchors.verticalCenter: parent.verticalCenter
         }
     }
     Label
     {
         id:brightness
         anchors.top: bass.bottom
         anchors.left: keypadroot.left
         anchors.leftMargin: keypadroot.height/2
         anchors.topMargin:keypadroot.height/13
         text: "Brightness:"
         font.pixelSize: keypadroot.height/19
         color: "Black"
         SliderQMl
         {
             anchors.left:parent.left
             anchors.leftMargin:volume.width+80
             anchors.verticalCenter: parent.verticalCenter

         }
     }
 }
 Label
 {
     id:settinglable
     anchors.top: settingScreenId.top
     anchors.horizontalCenter: settingScreenId.horizontalCenter
     anchors.topMargin:settingScreenId.height/5
     anchors.horizontalCenterOffset: settingScreenId.height/7.6
     //text: "Phone Setting"
     font.pixelSize: settingScreenId.height/15
     color: "Black"
 }
 MediaSettingScreen
 {
     id:mediapSettingScreenID
     visible: false
     enabled: false
 }

 function disableLayer()
 {
    keypadroot.visible = false;
    keypadroot.enabled=false;
    phoenviewId.visible =false;
    phoenviewId.enabled =false;
    mediapSettingScreenID.visible = false;
    mediapSettingScreenID.enabled=false;
 }
}
