--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- _meta_installation_object class
local _meta_installation_object = {}
local _meta_installation_object_mt = {
	__name = "_meta_installation_object";
	__index = _meta_installation_object;
}

local function cast__meta_installation_object(t)
	return setmetatable(t, _meta_installation_object_mt)
end

local function new__meta_installation_object(creator, created, updated)
	return cast__meta_installation_object({
		["creator"] = creator;
		["created"] = created;
		["updated"] = updated;
	})
end

return {
	cast = cast__meta_installation_object;
	new = new__meta_installation_object;
}