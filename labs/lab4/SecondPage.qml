import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        id: listView

        Column {
            Item {
                id:tp
                height: timePicker.height
                width: parent.width

                TimePicker {
                    id:timePicker
                    hour: 15
                    minute: 26
                    onMinuteChanged: console.log(time)
                    onHourChanged: console.log(time)
                }

                Label {
                    anchors.centerIn: timePicker
                    text: timePicker.timeText
                    font.pixelSize: Theme.fontSizeExtraLarge
                }
            }

            Column {
                Switch { id: mute }
                Label { text: "this Switch is" + (mute.checked ? "off" : "on") }
            }

            Slider {
                width: page.width
                label: "ползунок"
                maximumValue: 100
                minimumValue: 0
                value: 50
                stepSize: 1
                valueText: value
                onValueChanged: console.log(value)
            }
        }
    }
}
