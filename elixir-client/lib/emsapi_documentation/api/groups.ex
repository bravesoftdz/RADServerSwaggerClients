# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule EMSAPIDocumentation.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias EMSAPIDocumentation.Connection
  import EMSAPIDocumentation.RequestBuilder


  @doc """
  Add Group
   |      Used to add a new &#x60;Group&#x60; object to the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - body (GroupAddObject): Object to sign up a new EMS User in the EMS Server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec add_group(Tesla.Env.client, EMSAPIDocumentation.Model.GroupAddObject.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def add_group(connection, body, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:post)
    |> url("/groups")
    |> add_param(:body, :"body", body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete Group
   |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - item (String.t): A group name
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec delete_group(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_group(connection, item, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:delete)
    |> url("/groups/#{item}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get Group
   |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - item (String.t): A group name
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.GroupObject{}} on success
  {:error, info} on failure
  """
  @spec get_group(Tesla.Env.client, String.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.GroupObject.t} | {:error, Tesla.Env.t}
  def get_group(connection, item, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:get)
    |> url("/groups/#{item}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.GroupObject{})
  end

  @doc """
  Get Fields
   |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, [%FieldGroupObject{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_group_fields(Tesla.Env.client, keyword()) :: {:ok, list(EMSAPIDocumentation.Model.FieldGroupObject.t)} | {:error, Tesla.Env.t}
  def get_group_fields(connection, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:get)
    |> url("/groups/fields")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EMSAPIDocumentation.Model.FieldGroupObject{}])
  end

  @doc """
  Get Groups
   |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 
    - :skip (float()): users skipped
    - :limit (float()): maximum number of results to return
    - :order (float()): order ascending or descending (asc, desc)
    - :where (String.t): filter operators (lt, lte, gt, gte, eq, neq, like, nlike)

  ## Returns

  {:ok, [%GroupObject{}, ...]} on success
  {:error, info} on failure
  """
  @spec get_groups(Tesla.Env.client, keyword()) :: {:ok, list(EMSAPIDocumentation.Model.GroupObject.t)} | {:error, Tesla.Env.t}
  def get_groups(connection, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers,
      :"skip" => :query,
      :"limit" => :query,
      :"order" => :query,
      :"where" => :query
    }
    %{}
    |> method(:get)
    |> url("/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%EMSAPIDocumentation.Model.GroupObject{}])
  end

  @doc """
  Update Group
   |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.

  ## Parameters

  - connection (EMSAPIDocumentation.Connection): Connection to server
  - item (String.t): A group name
  - body (UpdateGroupObject): Object to sign up a new EMS User in the EMS Server
  - opts (KeywordList): [optional] Optional parameters
    - :x_embarcadero_application_id (String.t): 
    - :x_embarcadero_app_secret (String.t): 
    - :x_embarcadero_master_secret (String.t): 

  ## Returns

  {:ok, %EMSAPIDocumentation.Model.UpdatedGroupObject{}} on success
  {:error, info} on failure
  """
  @spec update_group(Tesla.Env.client, String.t, EMSAPIDocumentation.Model.UpdateGroupObject.t, keyword()) :: {:ok, EMSAPIDocumentation.Model.UpdatedGroupObject.t} | {:error, Tesla.Env.t}
  def update_group(connection, item, body, opts \\ []) do
    optional_params = %{
      :"X-Embarcadero-Application-Id" => :headers,
      :"X-Embarcadero-App-Secret" => :headers,
      :"X-Embarcadero-Master-Secret" => :headers
    }
    %{}
    |> method(:put)
    |> url("/groups/#{item}")
    |> add_param(:body, :"body", body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%EMSAPIDocumentation.Model.UpdatedGroupObject{})
  end
end
