import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Style exposing (..)

containerStyle : List Style
containerStyle =
  [ margin "5px 5px" ]

inputStyle : List Style
inputStyle =
  [ outline "none"
  , padding "5px"
  , display "block"
  , marginBottom "5px"
  ]

main =
  beginnerProgram { model = model, view = view, update = update}

-- model
type alias Model =
  { todo : String
  , todos : List String
  }

model : Model
model =
  { todo = ""
  , todos = []
  }



-- view
todoItem : String -> Html Msg
todoItem todo =
  li [] [text todo, button [ onClick (RemoveTodo todo) ] [ text "x" ]]

todoList : List String -> List (Html Msg)
todoList todos =
  List.map todoItem todos

view model =
  div[ style containerStyle ] [
    input [
      type_ "text"
      , style inputStyle
      , onInput UpdateTodo
      , value model.todo
    ] []
    , button [ onClick AddTodo ] [ text "Submit" ]
    , button [ onClick RemoveAll ] [ text "Remove All" ]
    , div [] [ ul [] (todoList model.todos) ]
  ]

-- update
type Msg =
  UpdateTodo String
  | RemoveTodo String
  | AddTodo
  | RemoveAll
  | ClearInput

update : Msg -> Model -> Model
update msg model =
  case msg of
    UpdateTodo text ->
      { model | todo = text }

    AddTodo ->
      { model | todos = model.todo :: model.todos, todo = ""  }
  
    RemoveAll ->
      { model | todos = [] }

    RemoveTodo text ->
      { model | todos = List.filter(\y -> y /= text) model.todos }
    
    ClearInput ->
      { model | todo = "" }