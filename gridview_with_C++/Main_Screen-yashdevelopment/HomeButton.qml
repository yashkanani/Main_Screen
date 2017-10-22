import QtQuick 2.0

Item {
    property int itemWidth: root.width
    property int itemHeight: root.height
    id:keypadroot
    visible: true
    width: itemWidth
    height: itemHeight

    Rectangle
    {
        id:home
        width: parent.width/13.33
        height: parent.height/7.9
        color: "Transparent"
    }

    Image
    {
        id:homeIconImage
        width: parent.width/13.33
        height: parent.height/7.9
        anchors.left: home.left
        anchors.right: home.right
        fillMode: Image.PreserveAspectFit
        source:"qrc:/Resized_images/Apps-Home-icon.png"
    }

    MouseArea
    {
        anchors.fill:home
        hoverEnabled: true
        onEntered:
        {
            home.border.color="skyblue"
            home.opacity=0.5
            home.radius=12
        }
        onExited:
        {
            home.border.color="Transparent"
            home.opacity=1

        }
        onPressed:
        {
            home.border.color="white"
            home.opacity=0.7
            home.radius=12
        }
        onReleased:
        {
            home.border.color="Transparent"
            home.opacity=1.0
            onEntered:
            {
                home.border.color="skyblue"
                home.opacity=0.5
                home.radius=12
            }
            root.changeScreen("main.qml")
            keypadroot.visible=false
            root.visible=false
        }


    }

}
