=begin
#EMS API Documentation

#Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

OpenAPI spec version: 0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::GroupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GroupsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::GroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupsApi' do
    it 'should create an instance of GroupsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::GroupsApi)
    end
  end

  # unit tests for add_group
  # Add Group
  #  |      Used to add a new &#x60;Group&#x60; object to the EMS database.
  # @param body Object to sign up a new EMS User in the EMS Server
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @return [nil]
  describe 'add_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_group
  # Delete Group
  #  |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
  # @param item A group name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @return [nil]
  describe 'delete_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group
  # Get Group
  #  |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
  # @param item A group name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @return [GroupObject]
  describe 'get_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_group_fields
  # Get Fields
  #  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @return [Array<FieldGroupObject>]
  describe 'get_group_fields test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_groups
  # Get Groups
  #  |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @option opts [Float] :skip users skipped
  # @option opts [Float] :limit maximum number of results to return
  # @option opts [Float] :order order ascending or descending (asc, desc)
  # @option opts [String] :where filter operators (lt, lte, gt, gte, eq, neq, like, nlike)
  # @return [Array<GroupObject>]
  describe 'get_groups test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_group
  # Update Group
  #  |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
  # @param item A group name
  # @param body Object to sign up a new EMS User in the EMS Server
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_embarcadero_application_id 
  # @option opts [String] :x_embarcadero_app_secret 
  # @option opts [String] :x_embarcadero_master_secret 
  # @return [UpdatedGroupObject]
  describe 'update_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
