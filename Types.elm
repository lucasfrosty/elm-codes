import Html


hello : String -> String
hello name =
  "Hello " ++ name ++ "!"

main : Html.Html msg
main =
  hello "Lucas"
  |> Html.text