#ifndef TASK1_H
#define TASK1_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QDebug>
#include <QJsonDocument>
#include <QJsonObject>
#include <QUrlQuery>

class Task1: public QObject
{
    Q_OBJECT

private:
    QByteArray content;
public:
    Task1 ( QObject * parent = 0 );

    Q_INVOKABLE void sendGETRequest();
    Q_INVOKABLE void sendPOSTRequest();
//    Q_INVOKABLE void printContent();
private slots:
    void replyFinished();
};

#endif // TASK1_H
