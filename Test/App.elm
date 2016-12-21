module Test.App exposing (..)

import Html exposing (div, text, Html)
import StringUtils exposing (..)


main : Html a
main =
    let
        hello =
            "Hello World" +++ "!! " +++ " " +++ ( 1, 2 ) +++ " " +++ { x = [ 3, 4 ], y = "abc" }

        goodbye =
            "Goodbye Cruel World!!" +-+ ( 1, 2 ) +-+ { x = [ 3, 4 ], y = "abc" }

        l =
            let
                ll =
                    Debug.log "hello" hello
            in
                Debug.log "goodbye" goodbye
    in
        div []
            [ div []
                [ text hello
                ]
            , div
                []
                [ text goodbye
                ]
            ]
