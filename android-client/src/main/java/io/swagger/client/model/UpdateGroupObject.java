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

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class UpdateGroupObject {
  
  @SerializedName("fieldName")
  private String fieldName = null;
  @SerializedName("users")
  private List<String> users = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFieldName() {
    return fieldName;
  }
  public void setFieldName(String fieldName) {
    this.fieldName = fieldName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getUsers() {
    return users;
  }
  public void setUsers(List<String> users) {
    this.users = users;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UpdateGroupObject updateGroupObject = (UpdateGroupObject) o;
    return (this.fieldName == null ? updateGroupObject.fieldName == null : this.fieldName.equals(updateGroupObject.fieldName)) &&
        (this.users == null ? updateGroupObject.users == null : this.users.equals(updateGroupObject.users));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.fieldName == null ? 0: this.fieldName.hashCode());
    result = 31 * result + (this.users == null ? 0: this.users.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class UpdateGroupObject {\n");
    
    sb.append("  fieldName: ").append(fieldName).append("\n");
    sb.append("  users: ").append(users).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}