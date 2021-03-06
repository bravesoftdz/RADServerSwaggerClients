/**
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


#include "SWGInstallationObject.h"

#include "SWGHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace Swagger {

SWGInstallationObject::SWGInstallationObject(QString json) {
    init();
    this->fromJson(json);
}

SWGInstallationObject::SWGInstallationObject() {
    init();
}

SWGInstallationObject::~SWGInstallationObject() {
    this->cleanup();
}

void
SWGInstallationObject::init() {
    _id = new QString("");
    m__id_isSet = false;
    device_token = new QString("");
    m_device_token_isSet = false;
    device_type = new QString("");
    m_device_type_isSet = false;
    _meta = new SWG_metaInstallationObject();
    m__meta_isSet = false;
    channels = new QList<QString*>();
    m_channels_isSet = false;
}

void
SWGInstallationObject::cleanup() {
    if(_id != nullptr) { 
        delete _id;
    }
    if(device_token != nullptr) { 
        delete device_token;
    }
    if(device_type != nullptr) { 
        delete device_type;
    }
    if(_meta != nullptr) { 
        delete _meta;
    }
    if(channels != nullptr) { 
        auto arr = channels;
        for(auto o: *arr) { 
            delete o;
        }
        delete channels;
    }
}

SWGInstallationObject*
SWGInstallationObject::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
SWGInstallationObject::fromJsonObject(QJsonObject pJson) {
    ::Swagger::setValue(&_id, pJson["_id"], "QString", "QString");
    
    ::Swagger::setValue(&device_token, pJson["deviceToken"], "QString", "QString");
    
    ::Swagger::setValue(&device_type, pJson["deviceType"], "QString", "QString");
    
    ::Swagger::setValue(&_meta, pJson["_meta"], "SWG_metaInstallationObject", "SWG_metaInstallationObject");
    
    
    ::Swagger::setValue(&channels, pJson["channels"], "QList", "QString");
}

QString
SWGInstallationObject::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
SWGInstallationObject::asJsonObject() {
    QJsonObject obj;
    if(_id != nullptr && *_id != QString("")){
        toJsonValue(QString("_id"), _id, obj, QString("QString"));
    }
    if(device_token != nullptr && *device_token != QString("")){
        toJsonValue(QString("deviceToken"), device_token, obj, QString("QString"));
    }
    if(device_type != nullptr && *device_type != QString("")){
        toJsonValue(QString("deviceType"), device_type, obj, QString("QString"));
    }
    if((_meta != nullptr) && (_meta->isSet())){
        toJsonValue(QString("_meta"), _meta, obj, QString("SWG_metaInstallationObject"));
    }
    if(channels->size() > 0){
        toJsonArray((QList<void*>*)channels, obj, "channels", "QString");
    }

    return obj;
}

QString*
SWGInstallationObject::getId() {
    return _id;
}
void
SWGInstallationObject::setId(QString* _id) {
    this->_id = _id;
    this->m__id_isSet = true;
}

QString*
SWGInstallationObject::getDeviceToken() {
    return device_token;
}
void
SWGInstallationObject::setDeviceToken(QString* device_token) {
    this->device_token = device_token;
    this->m_device_token_isSet = true;
}

QString*
SWGInstallationObject::getDeviceType() {
    return device_type;
}
void
SWGInstallationObject::setDeviceType(QString* device_type) {
    this->device_type = device_type;
    this->m_device_type_isSet = true;
}

SWG_metaInstallationObject*
SWGInstallationObject::getMeta() {
    return _meta;
}
void
SWGInstallationObject::setMeta(SWG_metaInstallationObject* _meta) {
    this->_meta = _meta;
    this->m__meta_isSet = true;
}

QList<QString*>*
SWGInstallationObject::getChannels() {
    return channels;
}
void
SWGInstallationObject::setChannels(QList<QString*>* channels) {
    this->channels = channels;
    this->m_channels_isSet = true;
}


bool
SWGInstallationObject::isSet(){
    bool isObjectUpdated = false;
    do{
        if(_id != nullptr && *_id != QString("")){ isObjectUpdated = true; break;}
        if(device_token != nullptr && *device_token != QString("")){ isObjectUpdated = true; break;}
        if(device_type != nullptr && *device_type != QString("")){ isObjectUpdated = true; break;}
        if(_meta != nullptr && _meta->isSet()){ isObjectUpdated = true; break;}
        if(channels->size() > 0){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

