#include "task1.h"

Task1::Task1 ( QObject * parent ) : QObject( parent ) {}

void Task1::sendGETRequest() {
   QNetworkAccessManager *manager = new QNetworkAccessManager(this);
   QNetworkRequest request;
   request.setUrl(QUrl("http://httpbin.org/ip"));
   QNetworkReply *reply = manager->get(request);
   connect(reply, SIGNAL(finished()), this, SLOT(replyFinished()));
}

void Task1::sendPOSTRequest() {
    QUrl serviceUrl = QUrl("http://httpbin.org/post");
    QUrlQuery postData;

    postData.addQueryItem("param1", "fuck");
    postData.addQueryItem("param2", "you");
    postData.addQueryItem("param2", "Sailfish");

    QNetworkAccessManager *networkManager = new QNetworkAccessManager(this);
    QNetworkRequest request(serviceUrl);
    request.setHeader(QNetworkRequest::ContentTypeHeader,
        "application/x-www-form-urlencoded");
    QNetworkReply *reply = networkManager->post(request, postData.toString(QUrl::FullyEncoded).toUtf8());
    connect(reply, SIGNAL(finished()), this, SLOT(replyFinished()));
}

void Task1::replyFinished() {
    QNetworkReply *reply = qobject_cast<QNetworkReply*>(sender());
    if (reply->error() == QNetworkReply::NoError) {
        content = reply->readAll();

        qDebug() << "Raw Response " << content;
//        QJsonDocument  jsonDoc = QJsonDocument::fromJson(content);

//        QJsonObject jsonObj = jsonDoc.object();


//        qDebug() << "IPs:" << jsonObj["origin"].toString();
    }
}

//void Task1::printContent() {
//   qDebug() << content;
//}

