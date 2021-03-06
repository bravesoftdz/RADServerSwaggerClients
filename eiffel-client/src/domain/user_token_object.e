note
 description:"[
		EMS API Documentation
 		Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
  		OpenAPI spec version: 0.0.0
 	    

  	NOTE: This class is auto generated by the swagger code generator program.

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel swagger codegen", "src=https://github.com/swagger-api/swagger-codegen.git", "protocol=uri"
class USER_TOKEN_OBJECT 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    id: detachable STRING_32 
      
    username: detachable STRING_32 
      
    var_meta: detachable _META_OBJECT 
      
    sessiontoken: detachable STRING_32 
      

feature -- Change Element  
 
    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name		
      end

    set_username (a_name: like username)
        -- Set 'username' with 'a_name'.
      do
        username := a_name
      ensure
        username_set: username = a_name		
      end

    set_var_meta (a_name: like var_meta)
        -- Set 'var_meta' with 'a_name'.
      do
        var_meta := a_name
      ensure
        var_meta_set: var_meta = a_name		
      end

    set_sessiontoken (a_name: like sessiontoken)
        -- Set 'sessiontoken' with 'a_name'.
      do
        sessiontoken := a_name
      ensure
        sessiontoken_set: sessiontoken = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass USER_TOKEN_OBJECT%N")
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")    
        end  
        if attached username as l_username then
          Result.append ("%Nusername:")
          Result.append (l_username.out)
          Result.append ("%N")    
        end  
        if attached var_meta as l_var_meta then
          Result.append ("%Nvar_meta:")
          Result.append (l_var_meta.out)
          Result.append ("%N")    
        end  
        if attached sessiontoken as l_sessiontoken then
          Result.append ("%Nsessiontoken:")
          Result.append (l_sessiontoken.out)
          Result.append ("%N")    
        end  
      end
end


