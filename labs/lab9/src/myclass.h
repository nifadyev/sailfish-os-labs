#ifndef MYCLASS_H
#define MYCLASS_H

#include <QObject>
#include <QDebug>

class MyClass : public QObject {
   Q_OBJECT
   Q_PROPERTY(QString text READ getText WRITE setText
                             NOTIFY textChanged)
private:
   QString text;
public:
   MyClass();
   QString getText();
   void setText(QString &newText);
   Q_INVOKABLE void printText();
private slots:
signals:
   void textChanged();
};

#endif // MYCLASS_H
