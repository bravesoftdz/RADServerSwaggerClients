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

/*
 * SWGPushDataObject_gcm.h
 *
 * 
 */

#ifndef SWGPushDataObject_gcm_H_
#define SWGPushDataObject_gcm_H_

#include <QJsonObject>


#include <QString>

#include "SWGObject.h"

namespace Swagger {

class SWGPushDataObject_gcm: public SWGObject {
public:
    SWGPushDataObject_gcm();
    SWGPushDataObject_gcm(QString json);
    ~SWGPushDataObject_gcm();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    SWGPushDataObject_gcm* fromJson(QString jsonString) override;

    QString* getMessage();
    void setMessage(QString* message);

    QString* getTitle();
    void setTitle(QString* title);


    virtual bool isSet() override;

private:
    QString* message;
    bool m_message_isSet;

    QString* title;
    bool m_title_isSet;

};

}

#endif /* SWGPushDataObject_gcm_H_ */