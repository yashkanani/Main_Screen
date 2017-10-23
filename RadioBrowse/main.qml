import QtQuick 2.8
import QtQuick.Window 2.2

Window {

    visible: true
    width: 640
    height: 380


    Rectangle{
        visible: true

        height: parent.height/2
        width: parent.width/4

        anchors.right: parent.right
        anchors.rightMargin: parent.width/10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.width/7
        color:"lightblue"
    }

    Component.onCompleted:
    {

        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 88.1 - WHPR"});
        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 88.3 - WCBN  "});
        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 90.9 - WRCJ "});
        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 93.1 - WDRQ "});
        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 93.9 - CKLW "});
        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 95.5 - WKQI "});
        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 101.1 - WRIF"});
        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 104.3 - WOMC"});
        browseList.model.append({mycolor:"#ebeef4",
                                    myText:"FM 107.5 - WGPR "});

    }

    ListView
    {
        id:browseList
        x:parent.width/1.53
        y:parent.height/3.83
        width: parent.width/4
        height: parent.height/2
        spacing: parent.width/300
        focus:true
        model:ListModel{}
        delegate:


            Rectangle
        {
            id:browseRectangle
            width: browseList.width
            height: browseList.height/6.9
            color:mycolor
            radius: 10

            MouseArea
            {
                anchors.fill: browseRectangle
                onPressed:
                {
                    browseRectangle.border.color="skyblue"
                    browseRectangle.opacity=0.5
                    browseRectangle.radius=10
                }
                onReleased:
                {
                    browseRectangle.border.color="Transparent"
                    browseRectangle.opacity=1
                }

            }
            Text {

                anchors.centerIn:browseRectangle
                text: myText
                font.pixelSize: parent.height/2
                fontSizeMode: Text.Fit
            }
        }
    }




   }
