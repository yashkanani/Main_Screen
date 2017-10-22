import QtQuick 2.0

Item {

    id:hmiScreen
    property int hmiWidth:root.width;
    property int hmiHeight:root.height;
    signal refreshScreen(var value)
    width: hmiWidth
    height: hmiHeight


    Component.onCompleted:  {

        gridview.model.append ({
                                   name: "Radio",
                                   portrait: "/Resized_images/radio.png"

                               });
        gridview.model.append ({
                                   name: "Media Player",
                                   portrait: "/Resized_images/media.png"
                               });
        gridview.model.append ({
                                   name: "Phone",
                                   portrait: "/Resized_images/phone.png"
                               });
        gridview.model.append ({
                                   name: "Navigation",
                                   portrait: "/Resized_images/GPS.png"

                               });
        gridview.model.append ({
                                   name: "Setting",
                                   portrait: "/Resized_images/Settings.png"
                               });
        hmiScreen.refreshScreen(1);

    }

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
        objectName: "listViewmodel1"
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
        delegate:contactDelegate
        focus:true
    }

}
