import Html exposing (beginnerProgram, div, button, text, h1)
import Html.Events exposing (onClick)


main =
  beginnerProgram { model = 0, view = view, update = update }

view : a -> Html.Html Msg
view model =
  div []
    [ button [ onClick Increment ] [ text "+" ]
    , button [ onClick Decrement ] [ text "-" ]
    , h1 [] [ text (toString model) ]
    , button [ onClick Divide ] [ text "/"]
    , button [ onClick Multiply ] [ text "*"]
    ]


type Msg = Increment | Decrement | Multiply | Divide

update: Msg -> Float -> Float
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Multiply ->
      model * 2

    Divide ->
      model / 2
