module Test.App exposing (..)

import Html exposing (div, text, Html)
import StringUtils exposing (..)


(+--+) : a -> b -> String
(+--+) =
    concatWithSpaces 2


main : Html a
main =
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
        div [] []
