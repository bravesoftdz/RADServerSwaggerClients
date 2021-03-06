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

package io.swagger.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PushDataObjectAps {
  
  @SerializedName("alert")
  private String alert = null;
  @SerializedName("badge")
  private String badge = null;
  @SerializedName("sound")
  private String sound = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getAlert() {
    return alert;
  }
  public void setAlert(String alert) {
    this.alert = alert;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getBadge() {
    return badge;
  }
  public void setBadge(String badge) {
    this.badge = badge;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSound() {
    return sound;
  }
  public void setSound(String sound) {
    this.sound = sound;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PushDataObjectAps pushDataObjectAps = (PushDataObjectAps) o;
    return (this.alert == null ? pushDataObjectAps.alert == null : this.alert.equals(pushDataObjectAps.alert)) &&
        (this.badge == null ? pushDataObjectAps.badge == null : this.badge.equals(pushDataObjectAps.badge)) &&
        (this.sound == null ? pushDataObjectAps.sound == null : this.sound.equals(pushDataObjectAps.sound));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.alert == null ? 0: this.alert.hashCode());
    result = 31 * result + (this.badge == null ? 0: this.badge.hashCode());
    result = 31 * result + (this.sound == null ? 0: this.sound.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PushDataObjectAps {\n");
    
    sb.append("  alert: ").append(alert).append("\n");
    sb.append("  badge: ").append(badge).append("\n");
    sb.append("  sound: ").append(sound).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
