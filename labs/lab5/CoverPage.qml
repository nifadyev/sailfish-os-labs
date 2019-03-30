import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    Label {
        id: label
        anchors.centerIn: parent
        text: count
        property int count: 0
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-m-dismiss"
            onTriggered: label.count = 0
        }

        CoverAction {
            iconSource: "image://theme/icon-m-remove"
            onTriggered: label.count--
        }

        CoverAction {
            iconSource: "image://theme/icon-m-add"
            onTriggered: label.count++
        }
    }
}
