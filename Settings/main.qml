import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick 2.7
import QtQuick.Controls 1.4

Window
{

    visible: true
    width: 640
    height: 380
    title: qsTr("Media Screen")

    Image
    {
        id: background
        anchors.fill: parent
        source: "qrc:/images/main_Screen background.jpg"

    }

    Rectangle
       {
           id:homeIconRectangle
           width: parent.width/13.33
           height: parent.height/7.9
           color: "Transparent"
       }

       Image
       {
           id:homeIconImage
           width: parent.width/13.33
           height: parent.height/7.9
           anchors.left: homeIconRectangle.left
           anchors.right: homeIconRectangle.right
           fillMode: Image.PreserveAspectFit
           source:"qrc:/images/Apps-Home-icon.png"
       }

       MouseArea
       {
           anchors.fill:homeIconRectangle
           hoverEnabled: true
           onEntered:
           {
               homeIconRectangle.border.color="skyblue"
               homeIconRectangle.opacity=0.5
               homeIconRectangle.radius=12
           }
           onExited:
           {
               homeIconRectangle.border.color="Transparent"
               homeIconRectangle.opacity=1

           }
           onPressed:
           {
               homeIconRectangle.border.color="white"
               homeIconRectangle.opacity=0.7
               homeIconRectangle.radius=12
           }
           onReleased:
           {
               homeIconRectangle.border.color="Transparent"
               homeIconRectangle.opacity=1.0
               onEntered:
               {
                   homeIconRectangle.border.color="skyblue"
                   homeIconRectangle.opacity=0.5
                   homeIconRectangle.radius=12
               }
           }


}
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

       Button{
           id: radio
           anchors.left: parent.left
                   anchors.top: parent.top
                   anchors.topMargin: parent.height/6.33
                   height: parent.height/8
                   width: parent.width/4
                   Text{
                       anchors.centerIn: radio
                       text: "RADIO"
                       font.pixelSize: 18
                   }

       }
       Button{
           id: media
           anchors.left: parent.left
                   anchors.top: parent.top
                   anchors.topMargin: parent.height/3.16
                   height: parent.height/8
                   width: parent.width/4
                   Text{
                       anchors.centerIn: media
                       text: "MEDIA"
                       font.pixelSize: 18
                   }
       }
       Button{
           id: phone
           anchors.left: parent.left
                   anchors.top: parent.top
                   anchors.topMargin: parent.height/2.11
                   height: parent.height/8
                   width: parent.width/4
                   Text{
                       anchors.centerIn: phone
                       text: "PHONE"
                       font.pixelSize: 18
                   }

       }
       Button{
           id: navigation
           anchors.left: parent.left
                   anchors.top: parent.top
                   anchors.topMargin: parent.height/1.58
                   height: parent.height/8
                   width: parent.width/4
                   Text{
                       anchors.centerIn: navigation
                       text: "Navigation"
                       font.pixelSize: 18
                   }
       }
      }



