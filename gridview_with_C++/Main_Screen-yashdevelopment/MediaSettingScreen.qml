import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4

Item {

    property int itemWidth: root.width
    property int itemHeight: root.height
    id:keypadroot
    visible: true
    width: itemWidth
    height: itemHeight
    Label
    {
        text: "Speakers System"
        font.pixelSize: keypadroot.height/15
        font.bold:true
        anchors.top: keypadroot.top
        anchors.horizontalCenter: keypadroot.horizontalCenter
        anchors.topMargin: keypadroot.height/10

    }

    ColumnLayout
    {

        anchors.top: keypadroot.top
        anchors.topMargin: keypadroot.height/3
        anchors.horizontalCenter: keypadroot.horizontalCenter

        RowLayout
        {
            ExclusiveGroup { id: tabPositionGroup2}
            RadioButton
            {
                id:radioFrontCheckButton
                style: RadioButtonStyle
                {
                    indicator:Rectangle
                    {
                        implicitWidth:  keypadroot.height/19
                        implicitHeight: keypadroot.height/19
                        radius: keypadroot.height/25
                        border.color: control.activeFocus ? "darkblue" : "gray"
                        border.width: 1
                        Rectangle {
                            anchors.fill: parent
                            visible: control.checked
                            color: "#555"
                            radius: keypadroot.height/25
                            anchors.margins: 4
                        }
                    }
                }
                Label
                {
                    anchors.left: radioFrontCheckButton.right
                    text: "Front"
                    font.pixelSize: keypadroot.height/25
                    font.bold: true
                }
                checked: true
                exclusiveGroup: tabPositionGroup2
            }

            spacing: keypadroot.height/6

            RadioButton
            {
                id:radioRearCheckButton
                style: RadioButtonStyle
                {
                    indicator:Rectangle
                    {
                        implicitWidth: keypadroot.height/19
                        implicitHeight: keypadroot.height/19
                        radius: keypadroot.height/25
                        border.color: control.activeFocus ? "darkblue" : "gray"
                        border.width: 1
                        Rectangle {

                            anchors.fill: parent
                            visible: control.checked
                            color: "#555"
                            radius: keypadroot.height/25
                            anchors.margins: 4
                        }
                    }
                }
                Label
                {
                    anchors.left: radioRearCheckButton.right
                    text: "Rear"
                    font.pixelSize: keypadroot.height/25
                    font.bold: true
                }

                exclusiveGroup: tabPositionGroup2
            }
        }

         spacing: keypadroot.height/7

        RowLayout
        {
            ExclusiveGroup { id: tabPositionGroup}
            RadioButton
            {
                id:radioBeepCheckButton
                style: RadioButtonStyle
                {
                    indicator:Rectangle
                    {
                        implicitWidth:  keypadroot.height/19
                        implicitHeight: keypadroot.height/19
                        radius: keypadroot.height/25
                        border.color: control.activeFocus ? "darkblue" : "gray"
                        border.width: 1
                        Rectangle {
                            anchors.fill: parent
                            visible: control.checked
                            color: "#555"
                            radius: keypadroot.height/25
                            anchors.margins: 4
                        }
                    }
                }
                Label
                {
                    anchors.left: radioBeepCheckButton.right
                    text: "Beep On"
                    font.pixelSize: keypadroot.height/25
                    font.bold: true
                }
                checked: true
                exclusiveGroup: tabPositionGroup
            }

           spacing: keypadroot.height/6
            RadioButton
            {
                id:radioBeepoffCheckButton
                style: RadioButtonStyle
                {
                    indicator:Rectangle
                    {
                        implicitWidth: keypadroot.height/19
                        implicitHeight: keypadroot.height/19
                        radius: keypadroot.height/25
                        border.color: control.activeFocus ? "darkblue" : "gray"
                        border.width: 1
                        Rectangle {

                            anchors.fill: parent
                            visible: control.checked
                            color: "#555"
                            radius: keypadroot.height/25
                            anchors.margins: 4
                        }
                    }
                }
                Label
                {
                    anchors.left: radioBeepoffCheckButton.right
                    text: "Beep Off"
                    font.pixelSize: keypadroot.height/25
                    font.bold: true
                }

                exclusiveGroup: tabPositionGroup
            }
        }


        RowLayout
        {

            ExclusiveGroup { id: tabPositionGroup1}
            RadioButton
            {
                id:radioLeftCheckButton
                style: RadioButtonStyle
                {
                    indicator:Rectangle
                    {
                        implicitWidth:  keypadroot.height/19
                        implicitHeight: keypadroot.height/19
                        radius: keypadroot.height/25
                        border.color: control.activeFocus ? "darkblue" : "gray"
                        border.width: 1
                        Rectangle {
                            anchors.fill: parent
                            visible: control.checked
                            color: "#555"
                            radius: keypadroot.height/25
                            anchors.margins: 4
                        }
                    }
                }
                Label
                {
                    anchors.left: radioLeftCheckButton.right
                    text: "Left"
                    font.pixelSize: keypadroot.height/25
                    font.bold: true
                }
                checked: true
                exclusiveGroup: tabPositionGroup1
            }

            spacing: keypadroot.height/6

            RadioButton
            {
                id:radioRightCheckButton
                style: RadioButtonStyle
                {
                    indicator:Rectangle
                    {
                        implicitWidth: keypadroot.height/19
                        implicitHeight: keypadroot.height/19
                        radius: keypadroot.height/25
                        border.color: control.activeFocus ? "darkblue" : "gray"
                        border.width: 1
                        Rectangle {

                            anchors.fill: parent
                            visible: control.checked
                            color: "#555"
                            radius: keypadroot.height/25
                            anchors.margins: 4
                        }
                    }
                }
                Label
                {
                    anchors.left: radioRightCheckButton.right
                    text: "Right"
                    font.pixelSize: keypadroot.height/25
                    font.bold: true
                }

                exclusiveGroup: tabPositionGroup1
            }
        }



    }

}






