import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        ComboBox{
            visible: true
            x: 200
            label:"Выпадающий список"
            description: "Описание выпадающего списка"

            menu: ContextMenu{
                id: contextMenu

                MenuItem { text: "0" }
                MenuItem { text: "1" }
                MenuItem { text: "2" }
            }

            onCurrentIndexChanged: console.log(contextMenu.data)
        }

        Column{
            width: page.width

            TextField {
                label: "TIPPP"
                placeholderText: label
                width: parent.width
                color: "white"
                placeholderColor: "white"
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                color: "yellow"
                highlightColor: "red"
                highlightBackgroundColor: "green"
                text:"КНОПКА"
                onClicked:{ color = "white"}
            }

            Button {
                id: button2
                property int i: 0;

                Label { anchors.top: button2.bottom; id: label1; text:"НЕ НАЖАТА" }

                anchors.horizontalCenter: parent.horizontalCenter
                color: "yellow"
                highlightColor: "red"
                highlightBackgroundColor: "green"
                text:"КНОПКА"
                onClicked: {
                    if(i == 0){ label1.text = "НАЖАТА"; color = "white"; i = 1 }
                    else { label1.text="НЕ НАЖАТА"; i = 0; color = "green" }
                }
            }

            ValueButton {
                property int i: 0
                label: "Счетчик"
                description: "считает количество нажатий"
                value: "0"
                onClicked: value = i++
            }

            DatePicker {
                daysVisible: true
                weeksVisible: true
                on_ChangingDateChanged: console.log(date)
            }
        }
    }
}
