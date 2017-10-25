import QtQuick 2.0

Item {



    id:mainScreenWindow
    visible: true
    width: 640
    height: 380


    BackgroundImage
    {
    id: backgroundImage
    }

    Text
    {
        id:date
        font.pixelSize: 640/30
        anchors.top:parent.top
        anchors.left:parent.left
        text: Qt.formatDateTime(new Date(), "MM/dd/yy")
        color: "#2b2f3b"
    }

    TimesetQML
    {
        id:timersetQML
    }

    ListModel
    {
    id:listViewmodel1
    }

    GridView
    {
        id: gridview
        objectName: "gridview"
        anchors.fill: parent
        anchors.margins:parent.width/16
        cellWidth:parent.width/3.7777778
        cellHeight:parent.height/2.533333
        clip: true
        model:listViewmodel1
        signal qmlSignalReceived(var x);
        signal pressedsignal(var x);
        signal entersignal(var x);
        signal exitsignal(var x);
        delegate:
            GridViewDelegate
            {   objectName: "deligate1"
                cell_Width: gridview.cellWidth
                cell_Height: gridview.cellHeight
                root_width: 640
                image_path: model.portrait
                text_name: model.name
            }
        focus:true
    }
}
