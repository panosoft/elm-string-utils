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
