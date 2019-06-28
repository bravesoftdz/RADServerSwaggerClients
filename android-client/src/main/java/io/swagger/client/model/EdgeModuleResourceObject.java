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

import io.swagger.client.model.MetaEdgeModuleObject;
import java.util.HashMap;
import java.util.Map;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class EdgeModuleResourceObject extends HashMap<String, String> {
  
  @SerializedName("resourcename")
  private String resourcename = null;
  @SerializedName("modulename")
  private String modulename = null;
  @SerializedName("moduleid")
  private String moduleid = null;
  @SerializedName("_meta")
  private MetaEdgeModuleObject meta = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getResourcename() {
    return resourcename;
  }
  public void setResourcename(String resourcename) {
    this.resourcename = resourcename;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getModulename() {
    return modulename;
  }
  public void setModulename(String modulename) {
    this.modulename = modulename;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getModuleid() {
    return moduleid;
  }
  public void setModuleid(String moduleid) {
    this.moduleid = moduleid;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public MetaEdgeModuleObject getMeta() {
    return meta;
  }
  public void setMeta(MetaEdgeModuleObject meta) {
    this.meta = meta;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    EdgeModuleResourceObject edgeModuleResourceObject = (EdgeModuleResourceObject) o;
    return (this.resourcename == null ? edgeModuleResourceObject.resourcename == null : this.resourcename.equals(edgeModuleResourceObject.resourcename)) &&
        (this.modulename == null ? edgeModuleResourceObject.modulename == null : this.modulename.equals(edgeModuleResourceObject.modulename)) &&
        (this.moduleid == null ? edgeModuleResourceObject.moduleid == null : this.moduleid.equals(edgeModuleResourceObject.moduleid)) &&
        (this.meta == null ? edgeModuleResourceObject.meta == null : this.meta.equals(edgeModuleResourceObject.meta));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.resourcename == null ? 0: this.resourcename.hashCode());
    result = 31 * result + (this.modulename == null ? 0: this.modulename.hashCode());
    result = 31 * result + (this.moduleid == null ? 0: this.moduleid.hashCode());
    result = 31 * result + (this.meta == null ? 0: this.meta.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class EdgeModuleResourceObject {\n");
    sb.append("  " + super.toString()).append("\n");
    sb.append("  resourcename: ").append(resourcename).append("\n");
    sb.append("  modulename: ").append(modulename).append("\n");
    sb.append("  moduleid: ").append(moduleid).append("\n");
    sb.append("  meta: ").append(meta).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}