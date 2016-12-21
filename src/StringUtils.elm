module StringUtils exposing ((+++), (+-+))

{-|
    Some String utils, e.g. better concat

@docs (+++), (+-+)
-}

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
