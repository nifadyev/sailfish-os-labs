import QtQuick 2.0
import Sailfish.Silica 1.0
import com.saildev.components 1.0
//import harbour.appname.MyModule 1.0
//import com.example 1.0

//Page {
//    id: page
//    allowedOrientations: Orientation.All

//    SilicaFlickable {
//        anchors.fill: parent

//        Column {
////            HelloWorld {
////                id: test_CustomComponent
////                text: "Good morning world!"
////                onTextChanged: console.log ( "Test QML component's 'text' value has been changed." )
////            }
////            Label {
////                id: label_Test
////                text: test_CustomComponent.text
////            }

////            Button {
////                id: button_Test

////                text: "Change"

////                onClicked: {
////                    if (test_CustomComponent.text === "Good morning world!") {
////                        test_CustomComponent.text = "Good evening world!"
////                    } else {
////                        test_CustomComponent.text = "Good morning world!"
////                    }
////                }
////            }
////            Task1 {
////                id: task1
////            }
//        }
//    }
//}

//Page {
////    MyClass {
////        id: myClass
////        text: "My Class Text"
////    }
//    Task1 {
//        id: myClass
//        content: "content"
//    }

//    SilicaFlickable {
//        Column {

////            anchors.fill: parent
////            PageHeader { title: "Page"}
//            Label { text: myClass.text}
//            Button {
////                width: parent.width
//                text: "Button"
//                onClicked: myClass.printContent()

//            }
//        }
//    }
//}

Page {
    id: page

    SilicaListView {

        anchors.fill: parent

        model: Task1 {
            id: dmodel
        }

        header: PageHeader {
            id: header
            title: "Unusual animals"
        }

        delegate: BackgroundItem {
            Label {
                x: Theme.horizontalPageMargin
                text: "Text"
            }
            onClicked: {
//                dmodel.sendGETRequest()
                dmodel.sendPOSTRequest()
//                dmodel.printContent()
            }
        }
    }
}
