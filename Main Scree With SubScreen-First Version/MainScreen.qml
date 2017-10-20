import QtQuick 2.0

Item {



    id:mainScreenWindow
    visible: true
    width: root.width
    height: root.height

    BackgroundImage
    {
    id: backgroundImage
    }

    Text
    {
        id:date
        font.pixelSize: root.width/30
        anchors.top:parent.top
        anchors.left:parent.left
        text: Qt.formatDateTime(new Date(), "MM/dd/yy")
        color: "#2b2f3b"
    }

// Image path need to be change according to directory

//    Component.onCompleted:  {

//        gridview.model.append ({
//                                   name: "Radio",
//                                   portrait: "/Resized_images/radio.png"
//                               });
//        gridview.model.append ({
//                                   name: "Media Player",
//                                   portrait: "/Resized_images/media.png"
//                               });
//        gridview.model.append ({
//                                   name: "Phone",
//                                   portrait: "/Resized_images/phone.png"
//                               });
//        gridview.model.append ({
//                                   name: "Navigation",
//                                   portrait: "/Resized_images/GPS.png"
//                               });
//        gridview.model.append ({
//                                   name: "Setting",
//                                   portrait: "/Resized_images/Settings.png"
//                               });
//    }


    Component
    {
        id:contactDelegate

        GridViewDelegate
        {
            cell_Width: gridview.cellWidth
            cell_Height: gridview.cellHeight
            root_width: root.width
            image_path:model.portrait
            text_name:model.name

        }
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
        delegate: contactDelegate
        focus:true
    }
}
