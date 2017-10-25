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

    Rectangle
    {
        id:writeEditRectangle
        width: keypadroot.width/2
        height: keypadroot.height/10
        x:keypadroot.width/3.9
        y:keypadroot.height/10
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
        height: keypadroot.height/10
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
            textEdit.text= ""
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
        width: keypadroot.width/5.3
        height: keypadroot.height/7.5
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
        x:keypadroot.width/1.90
        y:keypadroot.height/1.2
        width: keypadroot.width/5.3
        height: keypadroot.height/7.5
        Text
        {
            anchors.centerIn: contactButton
            text: qsTr("END")
            font.pixelSize: keypadroot.height/19
            fontSizeMode: Text.Fit
        }
    }
    Image
    {
        id:phoneImage
        anchors.left: contactButton.right
        anchors.bottom: contactButton.top
        width: keypadroot.width/3.7
        height: keypadroot.height/1.8
        fillMode: Image.PreserveAspectFit
        source:"qrc:/Images/if_Caucasian_boss_131511.png"
    }

}
