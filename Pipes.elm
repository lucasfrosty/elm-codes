import Html
import String

hello name =
  "Hello, " ++ name ++ "!"

main = 
  hello "Lucas"
    |> String.toUpper
    |> Html.text -- Html.text <| String.toUpper <| hello "Lucas"