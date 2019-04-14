#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <QGuiApplication>
#include <QQuickView>
#include <QtQml>

#include <sailfishapp.h>

#include "helloworld.h"
#include "task1.h"
#include "myclass.h"
#include "demomodel.h"

int main(int argc, char *argv[])
{
    QGuiApplication * q_application = SailfishApp :: application ( argc, argv );
    QQuickView * q_view = SailfishApp :: createView ( );

//    qmlRegisterType <HelloWorld> ( "com.saildev.components", 1, 0, "HelloWorld" );
    qmlRegisterType <Task1> ( "com.saildev.components", 1, 0, "Task1" );

    q_view -> setSource ( SailfishApp :: pathTo ( "qml/lab-9.qml" ));
    q_view -> showFullScreen ( );

    return q_application -> exec ( );
}

//int main(int argc, char *argv[]) {
//    MyClass myObject;
//    QObject::connect(&myObject1, SIGNAL(textChanged()), &myObject2, SLOT(printText());
//    myObject.setText("Slots and signals");
//    return 0;
//}

//int main(int argc, char *argv[]) {
//    MyClass myObject1;
//    MyClass myObject2;
//    QObject::connect(&myObject1, SIGNAL(textChanged()), &myObject2, SLOT(printText()));
//    // эквивалент
////    myObject2.connect(&myObject1, SIGNAL(textChanged()), SLOT(printText()));
//    myObject1.setText("Slots and signals");
//    return 0;
//}

//int main(int argc, char *argv[]) {
//    QGuiApplication* app = SailfishApp::application(argc, argv);
//    QQuickView * q_view = SailfishApp :: createView ( );
//    //...
////    qmlRegisterType<MyClass>("harbour.appname.MyModule", 1, 0, "MyClass");
//    qmlRegisterType<Task1>("harbour.appname.MyModule", 1, 0, "Task1");

//    q_view -> setSource ( SailfishApp :: pathTo ( "qml/lab-9.qml" ));
//    q_view -> showFullScreen ( );
//    //...
//    return app->exec();
//}

//int main(int argc, char *argv[])
//{
//    // Set up QML engine.
//    QGuiApplication* app = SailfishApp::application(argc, argv);
//    QQuickView * v = SailfishApp :: createView ( );

//    qmlRegisterType<DemoModel>("com.example", 1, 0, "DemoModel");

//    // Start the application.
//    v->setSource(SailfishApp::pathTo("qml/lab-9.qml"));
//    v->showFullScreen ( );

//    return app->exec();
//}
