{-
   EMS API Documentation
   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 0.0.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.VersionObject exposing (VersionObject, versionObjectDecoder, versionObjectEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias VersionObject =
    { version : Maybe String
    , server : Maybe String
    }


versionObjectDecoder : Decoder VersionObject
versionObjectDecoder =
    decode VersionObject
        |> optional "version" (Decode.nullable Decode.string) Nothing
        |> optional "server" (Decode.nullable Decode.string) Nothing



versionObjectEncoder : VersionObject -> Encode.Value
versionObjectEncoder model =
    Encode.object
        [ ( "version", withDefault Encode.null (map Encode.string model.version) )
        , ( "server", withDefault Encode.null (map Encode.string model.server) )
        ]

