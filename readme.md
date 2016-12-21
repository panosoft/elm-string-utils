# String Utils

> Some String utils, e.g. better concat

## API

> Concat things

No need to use toString like with the `++` operator.

```elm
(+++) : a -> b -> String
(+++) a b =
```
__Usage__

```elm
s : String
s =
	"Hello World" +++ "!! " +++ " " +++ ( 1, 2 ) +++ " " +++ { x = [ 3, 4 ], y = "abc" }
```
This produces the string: `Hello World!!  (1,2) { x = [3,4], y = "abc" }`.

> Concat things with a space between

No need to explicitly add a space.

```elm
(+-+) : a -> b -> String
(+-+) a b =
```
__Usage__

```elm
s : String
s =
	"Goodbye Cruel World!!" +-+ ( 1, 2 ) +-+ { x = [ 3, 4 ], y = "abc" }
```
This produces the string: `Goodbye Cruel World!! (1,2) { x = [3,4], y = "abc" }`.

> Helper to make concatentation operators with `n` spaces

```elm
concatWithSpaces : Int -> a -> b -> String
concatWithSpaces count a b =
```
__Usage__

```elm
(+--+) : a -> b -> String
(+--+) =
    concatWithSpaces 2

s : String
s =
	"Goodbye Cruel World!!" +--+ ( 1, 2 ) +--+ { x = [ 3, 4 ], y = "abc" }
```
This produces the string: <code>Goodbye Cruel World!!&ensp;&ensp;(1,2)&ensp;&ensp;{ x = [3,4], y = "abc" }</code>.
