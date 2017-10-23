import QtQuick 2.0

Item {
    id:homeButtonItemId
    visible: true
    width: root.width
    height: root.height

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
           source:"Images/Apps-Home-icon.png"
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
               root.changeScreen("MainScreen.qml")
           }

}


}
