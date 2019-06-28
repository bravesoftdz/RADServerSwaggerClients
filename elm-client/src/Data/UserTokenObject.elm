{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.UserTokenObject exposing (UserTokenObject, userTokenObjectDecoder, userTokenObjectEncoder)

import Data.MetaObject exposing (MetaObject, metaObjectDecoder, metaObjectEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias UserTokenObject =
    { id : String
    , username : String
    , meta : MetaObject
    , sessiontoken : String
    }


userTokenObjectDecoder : Decoder UserTokenObject
userTokenObjectDecoder =
    decode UserTokenObject
        |> required "id" Decode.string
        |> required "username" Decode.string
        |> required "_meta" metaObjectDecoder
        |> required "sessiontoken" Decode.string



userTokenObjectEncoder : UserTokenObject -> Encode.Value
userTokenObjectEncoder model =
    Encode.object
        [ ( "id", Encode.string model.id )
        , ( "username", Encode.string model.username )
        , ( "_meta", metaObjectEncoder model.meta )
        , ( "sessiontoken", Encode.string model.sessiontoken )
        ]

