module MaukoWWW exposing (..)

import Html exposing (..)

-- MAIN

main : Html String
main =
    view model

-- MODEL

type alias Landing =
    { catch: String
    , blabla: String
    }

model : Landing
model =
    { catch  = "Tinder of yadda-yadda"
    , blabla = "This is good shit..."
    }

-- VIEW

view : Landing -> Html String
view model =
    div []
    [ h1 [] [ text model.catch ]
    , h2 [] [ text model.blabla ]
    ]
