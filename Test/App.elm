port module Test.App exposing (..)

import StringUtils exposing (..)


{- Remove when compiler bug is fixed -}

import Json.Decode


port exitApp : Float -> Cmd msg


port externalStop : (() -> msg) -> Sub msg


type alias Model =
    {}


main : Program Never Model Msg
main =
    Platform.program
        { init = init
        , update = (\_ -> always <| {} ! [])
        , subscriptions = always Sub.none
        }


type Msg
    = Nop


(+--+) : a -> b -> String
(+--+) =
    concatWithSpaces 2


init : ( Model, Cmd Msg )
init =
    let
        hello =
            "Hello World" +++ "!! " +++ " " +++ ( 1, 2 ) +++ " " +++ { x = [ 3, 4 ], y = "abc" }

        goodbye =
            "Goodbye Cruel World!!" +-+ ( 1, 2 ) +-+ { x = [ 3, 4 ], y = "abc" }

        hello2 =
            "Hello World" +--+ "!! " +--+ ( 1, 2 ) +--+ { x = [ 3, 4 ], y = "abc" }

        l =
            let
                ll =
                    Debug.log "hello" hello
            in
                let
                    lll =
                        Debug.log "hello2" hello2
                in
                    Debug.log "goodbye" goodbye
    in
        {} ! []
