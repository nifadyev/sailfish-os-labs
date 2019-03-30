import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 1")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
        }

        //        *****************TASK #6****************
        //        id: listView
        //        anchors.fill: parent
        //        header: PageHeader {
        //            title: qsTr("Tasks")
        //        }

        //        width: 480
        //        height: 800
        //        delegate: Item {
        //            width: ListView.view.width
        //            height: Theme.itemSizeSmall

        //            Label {
        //                text: task
        //            }
        //        }
        //        section {
        //            property: 'time'
        //            delegate: SectionHeader {
        //                text: section
        //            }
        //        }

        //        model: ListModel {
        //            ListElement {
        //                task: "Business"
        //                time: "17.02.19"
        //            }
        //            ListElement {
        //                task: "Before pleasure"
        //                time: "16.02.19"
        //            }
        //            ListElement {
        //                task: "Read a book"
        //                time: "15.02.19"
        //            }
        //            ListElement {
        //                task: "Go to the university"
        //                time: "14.02.19"
        //            }
        //            ListElement {
        //                task: "Code"
        //                time: "13.02.19"
        //            }
        //        }

        //       ****************************************

        //       *****************TASK #10***************
        id: listView
        anchors.fill: parent
        model: 20

        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                text: "List item#" + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }

            menu: ContextMenu {
                MenuLabel {
                    text: "Context Menu"
                }
                MenuItem {
                    text: "Menu item 1"
                    onClicked: {
                        console.log("Menu item 1 was clicked on list item #" + index)
                    }
                }
                MenuItem {
                    text: "Menu item 2"
                    onClicked: {
                        console.log("Menu item 2 was clicked on list item #" + index)
                    }
                }
            }
        }
        //       ****************************************
    }
}
