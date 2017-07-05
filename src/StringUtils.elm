module StringUtils
    exposing
        ( (+++)
        , (+-+)
        , concatWithSpaces
        , cleanElmString
        )

{-|
    Some String utils, e.g. better concat

@docs (+++), (+-+), concatWithSpaces, cleanElmString
-}

import String
import Regex exposing (..)
import Native.StringUtils


{-| better concatenation without having to use toString
-}
(+++) : a -> b -> String
(+++) a b =
    let
        asString v =
            case Native.StringUtils.isString v of
                True ->
                    nopToString v

                False ->
                    toString v
    in
        (asString a) ++ (asString b)


{-| better concatenation with space in between
-}
(+-+) : a -> b -> String
(+-+) a b =
    a +++ " " +++ b


{-| helper for creating other operators
-}
concatWithSpaces : Int -> a -> b -> String
concatWithSpaces count a b =
    a +++ (String.repeat count " ") +++ b


{-| clean Elm string of all the backslashes
-}
cleanElmString : String -> String
cleanElmString string =
    string
        |> Regex.replace All (regex "\\\\n") (always "†n")
        |> Regex.replace All (regex "\\\\t") (always "†t")
        |> Regex.replace All (regex "\\\\") (always "")
        |> Regex.replace All (regex "\\\\\"") (always "\"")
        |> Regex.replace All (regex "†n") (always "\\n")
        |> Regex.replace All (regex "†t") (always "\\t")



-- HELPERS


{-| test for string
-}
isString : a -> Bool
isString =
    Native.StringUtils.isString


{-| dummy toString to fool compiler
    simply returns whatever is passed
-}
nopToString : a -> String
nopToString =
    Native.StringUtils.nopToString
