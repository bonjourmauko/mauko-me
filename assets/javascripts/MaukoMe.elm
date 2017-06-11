module MaukoMe exposing (..)

import Html exposing (..)

-- MAIN

main : Html String
main =
    view

-- VIEW

view : Html String
view =
    section []
    [ h1 [] [ text "Bonjour." ]
    , h2 [] [ text "I'm Mauko Quiroga and I build things." ]
    , p  [] [ text "I build "
            , strong [] [ text "software" ]
            , text " in Ruby, Elixir and JavaScript." ]
    , p  [] [ text "I build "
            , strong [] [ text "teams" ]
            , text " with love, agile and Kanban." ]
    , p  [] [ text "I build "
            , strong [] [ text "products" ]
            , text " that solve problems." ]
    , p  [] [ text "I build "
            , strong [] [ text "organisations" ]
            , text " with people." ]
    , p  [] [ text "I build "
            , strong [] [ text "digital public services" ]
            , text "." ]
    ]
