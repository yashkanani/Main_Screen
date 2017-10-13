import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    id:keypadroot
    visible: true
    width: 640
    height: 380
    title: qsTr("KEYPAD SCREEN")

    Image
    {
        id:backGroundImage
        width: keypadroot.width
        height: keypadroot.height
        fillMode: Image.PreserveAspectCrop
        source:"qrc:/Images/main_Screen background.jpg"
    }
    Text
    {
        id: timeText
        x:keypadroot.width-100
        y: 15
        font.pixelSize: 20
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
    Rectangle
    {
        id:homeIconRectangle
        width: keypadroot.width/13.33
        height: keypadroot.height/7.9
        color: "Transparent"
    }

    Image
    {
        id:homeIconImage
        width: keypadroot.width/13.33
        height: keypadroot.height/7.9
        anchors.left: homeIconRectangle.left
        anchors.right: homeIconRectangle.right
        fillMode: Image.PreserveAspectFit
        source:"qrc:/Images/Apps-Home-icon.png"
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
    Rectangle
    {
        id:writeEditRectangle
        width: keypadroot.width/2
        height: keypadroot.height/8
        x:keypadroot.width/3.9
        y:keypadroot.height/10
        anchors.left:keypadroot.left
        anchors.right: keypadroot.right
        color: "white"
    }
    TextEdit
    {

        id:textEdit
        x:keypadroot.width/3.9
        y:keypadroot.height/10
        width: keypadroot.width/2
        height: keypadroot.height/10
        font.family: "Helvetica"
        font.pointSize: keypadroot.height/15
        color: "black"
        focus: true
        horizontalAlignment:TextEdit.AlignRight

    }
    Rectangle
    {
        id:clearButton
        x:keypadroot.width/3.9
        y:keypadroot.height/10
        width: keypadroot.width/25
        height: keypadroot.height/8
        color:"Transparent"
    MouseArea
    {
        id:clearmousearea
        anchors.fill: clearButton
        hoverEnabled: true
        onEntered:
        {
            clearButton.border.color="gray"
            clearButton.radius=5

        }
        onExited:
        {
            clearButton.border.color="Transparent"
        }
        onPressed:
        {
            clearButton.border.color="gray"
            textEdit.text=" "
        }
        onReleased:
        {
            clearButton.border.color="gray"
            clearButton.radius=5
        }
        Text
        {
            anchors.centerIn:clearmousearea
            font.family: "Helvetica"
            font.pointSize: keypadroot.height/20
            text: qsTr("X")
            color: "red"
        }

    }
}


    Component.onCompleted:
    {

        keypadGrid.model.append({mycolor:"grey",
                                myText:"1"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"2"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"3"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"4"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"5"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"6"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"7"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"8"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"9"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"*"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"0"});
        keypadGrid.model.append({mycolor:"grey",
                                myText:"#"});

    }



    GridView
    {
        id:keypadGrid
        x:keypadroot.width/3.355
        y:keypadroot.height/3
        width: keypadroot.width/2.327
        height: keypadroot.height/2.171
        cellHeight:keypadroot.height/9
        cellWidth: keypadroot.width/7.11

        model:ListModel{}
        delegate:
            Rectangle
            {
                id:keypadRectangle
                width: keypadGrid.cellWidth
                height: keypadGrid.cellHeight
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
                    onClicked:
                    {

                       if(textEdit.length<10){textEdit.text=textEdit.text + myText;}
                        else {textEdit.readOnly=true;}
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
    Button
    {
        id:callButton
        x:keypadroot.width/3.35
        y:keypadroot.height/1.2
        width: keypadroot.width/6.4
        height: keypadroot.height/8
        Text
        {
            anchors.centerIn: callButton
            text: qsTr("CALL")
            font.pixelSize: keypadroot.height/19
            fontSizeMode: Text.Fit
        }

    }

    Button
    {
        id:contactButton
        x:keypadroot.width/1.75
        y:keypadroot.height/1.2
        width: keypadroot.width/6.4
        height: keypadroot.height/8
        Text
        {
            anchors.centerIn: contactButton
            text: qsTr("CONTACTS")
            font.pixelSize: keypadroot.height/19
            fontSizeMode: Text.Fit
        }
    }
    Image
    {
        id:phoneImage
        anchors.left: contactButton.right
        anchors.bottom: contactButton.top
        width: keypadroot.width/3
        height: keypadroot.height/1.5
        fillMode: Image.PreserveAspectFit
        source:"qrc:/Images/if_Caucasian_boss_131511.png"
    }

   /* Rectangle
    {
        id:keypadOne
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/3.355
        y:keypadroot.height/3
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadTwo
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/2.28
        y:keypadroot.height/3
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadThree
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/1.726
        y:keypadroot.height/3
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadFour
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/3.355
        y:keypadroot.height/2.25
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadFive
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/2.28
        y:keypadroot.height/2.25
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadSix
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/1.726
        y:keypadroot.height/2.25
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadSeven
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/3.355
        y:keypadroot.height/1.8
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadEight
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/2.28
        y:keypadroot.height/1.8
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadSNine
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/1.726
        y:keypadroot.height/1.8
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadSeven
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/3.355
        y:keypadroot.height/1.8
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadEight
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/2.28
        y:keypadroot.height/1.8
        opacity: 0.5
        color: "black"
    }
    Rectangle
    {
        id:keypadSNine
        width: keypadroot.width/7.11
        height: keypadroot.height/9
        x:keypadroot.width/1.726
        y:keypadroot.height/1.8
        opacity: 0.5
        color: "black"
    }*/


}


