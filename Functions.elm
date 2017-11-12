import Html
import String

hello name =
  "Hello, " ++ name ++ "!"

main =
  Html.text (hello "Lucas")