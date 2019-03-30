import QtQuick 2.2
import Sailfish.Silica 1.0

SlideshowView {

    PullDownMenu {
        MenuItem {
            text: qsTr("Show Page 1")
            onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
        }
    }

    id: view
    anchors.centerIn: parent
    height: width
    itemWidth: width
    itemHeight: width

    model: 5
    delegate: Rectangle {
        width: view.itemWidth
        height: view.height
        border.width: 1

        Text {
            anchors.centerIn: parent
            text: "Business" + " - " + index + 12 + ".02.19"
        }
    }
}
