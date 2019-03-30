import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 3 - tasks 6, 10")
                onClicked: pageStack.push(Qt.resolvedUrl("ThirdPage.qml"))
            }
            MenuItem {
                text: qsTr("Show Page 4 - task 7")
                onClicked: pageStack.push(Qt.resolvedUrl("FourthPage.qml"))
            }
            MenuItem {
                text: qsTr("Show Page 5 - task 8")
                onClicked: pageStack.push(Qt.resolvedUrl("FifthPage.qml"))
            }
            MenuItem {
                text: qsTr("Show Page 6 - task 9")
                onClicked: pageStack.push(Qt.resolvedUrl("SixthPage.qml"))
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

            //            *****************TASK #1****************
            //            Button {
            //                text: "Back"
            //                onClicked: {
            //                    pageStack.pop()
            //                }
            //            }

            //            Button {
            //                text: "Forward"
            //                onClicked: {
            //                    pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            //                }
            //            }

            //            Label {
            //                text: "Depth of stack:  " + pageStack.depth
            //            }
            //            ****************************************

            //            *****************TASK #2****************
            //            Button {
            //                text: "Delete Page"
            //                onClicked: {
            //                    pageStack.popAttached()
            //                }
            //            }

            //            Button {
            //                text: "Add Page"
            //                onClicked: {
            //                    pageStack.pushAttached(Qt.resolvedUrl("SecondPage.qml"))
            //                }
            //            }
            //            ****************************************

            //            *****************TASK #3****************
            //            Button {
            //                text: "Show dialog"
            //                onClicked: {
            //                    pageStack.push(dialogComponent)
            //                }

            //                Label {
            //                    y: 100
            //                    x: Theme.paddingLarge
            //                    text: "Text will be displayed here"
            //                }

            //                TextField {
            //                    y: 150
            //                    id: textField1
            //                    placeholderText: "EMPTY"
            //                }
            //            }

            //            Component {
            //                id: dialogComponent
            //                Dialog {
            //                    Column {
            //                        width: parent.width
            //                        anchors.fill: parent
            //                        spacing: Theme.paddingMedium

            //                        DialogHeader {
            //                            id: header
            //                        }
            //                        Label {
            //                            x: Theme.paddingLarge
            //                            text: "Enter text"
            //                        }
            //                        TextField {
            //                            id: textField2
            //                            placeholderText: "Enter something here"
            //                            width: parent.width
            //                        }
            //                    }
            //                    onAccepted: {
            //                        textField1.text = textField2.text
            //                    }
            //                }
            //            }
            //            ****************************************

            //            *****************TASK #4****************
            //            Button {
            //                text: "Show dialog"
            //                onClicked: {
            //                    pageStack.push(dialogComponent)
            //                }

            //                Label {
            //                    y: 100
            //                    x: Theme.paddingLarge
            //                    text: "Date will be displayed here"
            //                }

            //                TextField {
            //                    y: 150
            //                    id: textField1
            //                    placeholderText: "EMPTY"
            //                    width: parent.width
            //                }
            //            }

            //            Component {
            //                id: dialogComponent
            //                DatePickerDialog {
            //                    id: tDialog
            //                    onAccepted: {
            //                        textField1.text = tDialog.day + "/" + tDialog.month + "/" + tDialog.year
            //                    }
            //                }
            //            }
            //            ****************************************

            //            *****************TASK #5****************
            Button {
                text: "Show dialog"
                onClicked: {
                    pageStack.push(dialogComponent)
                }

                Label {
                    y: 100
                    x: Theme.paddingLarge
                    text: "Time will be displayed here"
                }

                TextField {
                    y: 150
                    id: textField1
                    placeholderText: "EMPTY"
                    width: parent.width
                }
            }

            Component {
                id: dialogComponent
                TimePickerDialog {
                    id: tDialog
                    onAccepted: {
                        textField1.text = tDialog.hour + ":" + tDialog.minute
                    }
                }
            }
            //            ****************************************
        }
    }
}
