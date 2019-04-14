#include "helloworld.h"

HelloWorld::HelloWorld( QObject * parent ) : QObject( parent ) {
    s_text = "Hello world!";
}

const QString HelloWorld :: text( ) const {
    return s_text;
}

void HelloWorld :: setText ( const QString &newText ) {
    if ( s_text != newText ) {
        s_text = newText;
        emit textChanged ( );
    }
}
