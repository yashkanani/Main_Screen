import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick 2.7
import QtQuick.Controls 1.4


Item {
    property int itemWidth: root.width
    property int itemHeight: root.height
    visible: true
    id:keypadroot
    width: itemWidth
    height: itemHeight

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
           source:"qrc:/Resized_images/Apps-Home-icon.png"
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
               root.changeScreen("main.qml")
               keypadroot.visible=false
               root.visible=false
           }


}
       Button
       {
           id: radio
           anchors.left: parent.left
                   anchors.top: parent.top
                   anchors.topMargin: parent.height/6.33
                   height: parent.height/8
                   width: parent.width/4
                   Text
                   {
                       anchors.centerIn: radio
                       text: "RADIO"
                       font.pixelSize: 18
                   }
                   onClicked:
                   {
                       console.log("Component onCompleted")
                       loader.setSource("RadioSettingScreen.qml")
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
