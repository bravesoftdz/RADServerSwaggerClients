/* 
 * EMS API Documentation
 *
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct EdgeModuleResourceObject {
  #[serde(rename = "resourcename")]
  resourcename: String,
  #[serde(rename = "modulename")]
  modulename: String,
  #[serde(rename = "moduleid")]
  moduleid: String,
  #[serde(rename = "_meta")]
  _meta: ::models::MetaEdgeModuleObject
}

impl EdgeModuleResourceObject {
  pub fn new(resourcename: String, modulename: String, moduleid: String, _meta: ::models::MetaEdgeModuleObject) -> EdgeModuleResourceObject {
    EdgeModuleResourceObject {
      resourcename: resourcename,
      modulename: modulename,
      moduleid: moduleid,
      _meta: _meta
    }
  }

  pub fn set_resourcename(&mut self, resourcename: String) {
    self.resourcename = resourcename;
  }

  pub fn with_resourcename(mut self, resourcename: String) -> EdgeModuleResourceObject {
    self.resourcename = resourcename;
    self
  }

  pub fn resourcename(&self) -> &String {
    &self.resourcename
  }


  pub fn set_modulename(&mut self, modulename: String) {
    self.modulename = modulename;
  }

  pub fn with_modulename(mut self, modulename: String) -> EdgeModuleResourceObject {
    self.modulename = modulename;
    self
  }

  pub fn modulename(&self) -> &String {
    &self.modulename
  }


  pub fn set_moduleid(&mut self, moduleid: String) {
    self.moduleid = moduleid;
  }

  pub fn with_moduleid(mut self, moduleid: String) -> EdgeModuleResourceObject {
    self.moduleid = moduleid;
    self
  }

  pub fn moduleid(&self) -> &String {
    &self.moduleid
  }


  pub fn set__meta(&mut self, _meta: ::models::MetaEdgeModuleObject) {
    self._meta = _meta;
  }

  pub fn with__meta(mut self, _meta: ::models::MetaEdgeModuleObject) -> EdgeModuleResourceObject {
    self._meta = _meta;
    self
  }

  pub fn _meta(&self) -> &::models::MetaEdgeModuleObject {
    &self._meta
  }


}


