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
class _META_OBJECT 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    creator: detachable STRING_32 
      
    created: detachable STRING_32 
      
    updated: detachable STRING_32 
      

feature -- Change Element  
 
    set_creator (a_name: like creator)
        -- Set 'creator' with 'a_name'.
      do
        creator := a_name
      ensure
        creator_set: creator = a_name		
      end

    set_created (a_name: like created)
        -- Set 'created' with 'a_name'.
      do
        created := a_name
      ensure
        created_set: created = a_name		
      end

    set_updated (a_name: like updated)
        -- Set 'updated' with 'a_name'.
      do
        updated := a_name
      ensure
        updated_set: updated = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass _META_OBJECT%N")
        if attached creator as l_creator then
          Result.append ("%Ncreator:")
          Result.append (l_creator.out)
          Result.append ("%N")    
        end  
        if attached created as l_created then
          Result.append ("%Ncreated:")
          Result.append (l_created.out)
          Result.append ("%N")    
        end  
        if attached updated as l_updated then
          Result.append ("%Nupdated:")
          Result.append (l_updated.out)
          Result.append ("%N")    
        end  
      end
end


