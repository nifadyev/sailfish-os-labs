#ifndef HELLOWORLD_H
#define HELLOWORLD_H

#include <QObject>


class HelloWorld: public QObject {
    Q_OBJECT

    Q_PROPERTY ( QString text READ text WRITE setText NOTIFY textChanged )
public:
    HelloWorld ( QObject * parent = 0 );

    const QString text ( ) const;
    void setText ( const QString &newText );

private:
    QString s_text;

signals:
    void textChanged ( );
};

#endif // HELLOWORLD_H
