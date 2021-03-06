{-
   Composition and Inheritence (Polymorphism)
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   The version of the OpenAPI document: 1.0.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.SubObjectAAllOf exposing (SubObjectAAllOf, decoder, encode, encodeWithTag, toString)

import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias SubObjectAAllOf =
    { valueA : Maybe String
    }


decoder : Decoder SubObjectAAllOf
decoder =
    Decode.succeed SubObjectAAllOf
        |> optional "valueA" (Decode.nullable Decode.string) Nothing


encode : SubObjectAAllOf -> Encode.Value
encode =
    Encode.object << encodePairs


encodeWithTag : ( String, String ) -> SubObjectAAllOf -> Encode.Value
encodeWithTag ( tagField, tag ) model =
    Encode.object <| encodePairs model ++ [ ( tagField, Encode.string tag ) ]


encodePairs : SubObjectAAllOf -> List ( String, Encode.Value )
encodePairs model =
    [ ( "valueA", Maybe.withDefault Encode.null (Maybe.map Encode.string model.valueA) )
    ]


toString : SubObjectAAllOf -> String
toString =
    Encode.encode 0 << encode
