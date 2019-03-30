import QtQuick 2.2
import Sailfish.Silica 1.0

Page {
    SilicaWebView {

        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 1")
                onClicked: pageStack.push(Qt.resolvedUrl("FirstPage.qml"))
            }
        }

        id: webView

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            bottom: urlField.top
        }
        url: "http://sailfishos.org"
    }

    TextField {
        id: urlField
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        inputMethodHints: Qt.ImhUrlCharactersOnly
        text: "http://sailfishos.org"
        label: webView.title
        EnterKey.onClicked: {
            webView.url = text
            parent.focus = true
        }
    }
}
