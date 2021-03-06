=begin
#EMS API Documentation

#Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

OpenAPI spec version: 0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/channel_name'
require 'swagger_client/models/edge_module_add_object'
require 'swagger_client/models/edge_module_added_object'
require 'swagger_client/models/edge_module_object'
require 'swagger_client/models/edge_module_resource_add_object'
require 'swagger_client/models/edge_module_resource_added_object'
require 'swagger_client/models/edge_module_resource_object'
require 'swagger_client/models/edge_module_resource_update_object'
require 'swagger_client/models/edge_module_resource_updated_object'
require 'swagger_client/models/edge_module_update_object'
require 'swagger_client/models/edge_module_updated_object'
require 'swagger_client/models/field_group_object'
require 'swagger_client/models/field_installation_object'
require 'swagger_client/models/field_object'
require 'swagger_client/models/field_object_fields'
require 'swagger_client/models/fields_edge_module_object'
require 'swagger_client/models/group_add_object'
require 'swagger_client/models/group_name'
require 'swagger_client/models/group_object'
require 'swagger_client/models/installation_add_object'
require 'swagger_client/models/installation_added_object'
require 'swagger_client/models/installation_object'
require 'swagger_client/models/_meta_edge_module_object'
require 'swagger_client/models/_meta_group_object'
require 'swagger_client/models/_meta_installation_object'
require 'swagger_client/models/_meta_object'
require 'swagger_client/models/push_data_object'
require 'swagger_client/models/push_data_object_aps'
require 'swagger_client/models/push_data_object_extras'
require 'swagger_client/models/push_data_object_gcm'
require 'swagger_client/models/push_object'
require 'swagger_client/models/push_where_object'
require 'swagger_client/models/push_where_object_device_token'
require 'swagger_client/models/update_group_object'
require 'swagger_client/models/update_installation_object'
require 'swagger_client/models/update_object'
require 'swagger_client/models/updated_group_object'
require 'swagger_client/models/updated_installation_object'
require 'swagger_client/models/updated_object'
require 'swagger_client/models/user_credentials_object'
require 'swagger_client/models/user_object'
require 'swagger_client/models/user_sign_up_response_object'
require 'swagger_client/models/user_token_object'
require 'swagger_client/models/userid_object'
require 'swagger_client/models/version_object'

# APIs
require 'swagger_client/api/api_doc_api'
require 'swagger_client/api/edge_modules_api'
require 'swagger_client/api/edge_modules_invokers_api'
require 'swagger_client/api/groups_api'
require 'swagger_client/api/installations_api'
require 'swagger_client/api/push_api'
require 'swagger_client/api/users_api'
require 'swagger_client/api/version_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
