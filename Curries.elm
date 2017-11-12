import Html
import String

hello name =
  "Hello, " ++ name ++ "!"

add x y =
  x + y

add7 = add 7



main =
  add7 10
    |> toString
    |> Html.text

-- main =
--   Html.text (toString (add7 1))