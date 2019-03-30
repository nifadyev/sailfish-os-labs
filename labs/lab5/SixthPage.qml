import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Pull down menu")
                onClicked: textField.text = "Pull down menu"
            }
        }

        PushUpMenu {
            MenuItem {
                text: qsTr("Push up menu")
                onClicked: textField.text = "Push up menu"
            }
        }

        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Page")
            }

            //            *****************TASK #9****************
            TextField {
                id: textField
                placeholderText: "Result will be here"
                width: parent.width
            }
        }
    }
}
