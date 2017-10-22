import QtQuick 2.0

Item {


        property int sliderWidth: root.width
        property int sliderHeight: root.height
    id: slider; width: sliderWidth/1.5; height: sliderHeight/23.75
       property real value: 1
       onValueChanged: updatePos();
       property real maximum: 1
       property real minimum: 1
       property int xMax: width - handle.width - 4
       onXMaxChanged: updatePos();
       onMinimumChanged: updatePos();

       function updatePos() {
           if (maximum > minimum) {
               var pos = 2 + (value - minimum) * slider.xMax / (maximum - minimum);
               pos = Math.min(pos, width - handle.width - 2);
               pos = Math.max(pos, 2);
               handle.x = pos;
           } else {
               handle.x = 2;
           }
       }

       Rectangle {
           anchors.fill: parent
           border.color: "white"; border.width: 0; radius: 8
           gradient: Gradient {
               GradientStop { position: 0.0; color: "#66343434" }
               GradientStop { position: 1.0; color: "#66000000" }
           }
       }

       Rectangle {
           id: handle; smooth: true
           y: 2; width: 30; height: slider.height-4; radius: 6
           gradient: Gradient {
               GradientStop { position: 0.0; color: "lightgray" }
               GradientStop { position: 1.0; color: "gray" }
           }

           MouseArea {
               id: mouse
               anchors.fill: parent; drag.target: parent
               drag.axis: Drag.XAxis; drag.minimumX: 2; drag.maximumX: slider.xMax+2
               onPositionChanged: { value = (maximum - minimum) * (handle.x-2) / slider.xMax + minimum; }
           }
       }

}
