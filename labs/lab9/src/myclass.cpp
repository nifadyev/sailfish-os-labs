#include "myclass.h"

MyClass::MyClass() : QObject() {
}
QString MyClass::getText() {
   return text;
}
void MyClass::setText(QString &newText) {
   text = newText;
}
void MyClass::printText() {
   qDebug() << text;
}
