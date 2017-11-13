import Html exposing (button, h1, div, beginnerProgram, text)
import Html.Events exposing (onClick)

main =
  beginnerProgram { model = 0, view = view, update = update }

-- view
view : a -> Html.Html Msg
view model =
  div []
    [ button [ onClick Inc ] [ text "+" ]
    , h1 [] [ text (toString model) ]
    , button [ onClick Dec ] [ text "-"]
    ]

-- update
type Msg = Inc | Dec

update : Msg -> Int -> Int
update msg model =
  case msg of
    Inc ->
      model + 1
    Dec ->
      model - 1

