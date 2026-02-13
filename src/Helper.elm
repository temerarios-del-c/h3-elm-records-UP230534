module Helper exposing (..)

import Html
import Html.Attributes


langs : List { name : String, releaseYear : Int, currentVersion : String }
langs =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" } ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list


users : List { name : String, uType : String }
users =
    [ { name = "Roberto", uType = "Student" }, { name = "Mitsiu", uType = "Professor" } ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    List.map
        (\tipo ->
            if tipo.uType == "Student" then
                tipo.name

            else
                ""
        )
        list


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control", releaseYear = 2019, available = True, downloads = 9999, genres = [ "Action", "Shooter" ] }, { title = "Ocarina of time", releaseYear = 1980, available = True, downloads = 9999, genres = [ "Action", "Adventure" ] } ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


add2 : number -> number -> number
add2 num1 num2 =
    num1 + num2


add3 : number -> number -> number -> number
add3 num1 num2 num3 =
    num1 + num2 + num3


calc : number -> number -> (number -> number -> number) -> number
calc num1 num2 operador =
    operador num1 num2


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "16gb", model = "Hp Victus", brand = "HP", screenSize = "16 inches" }


main : Html.Html msg
main =
    Html.div
        []
        [ Html.h1
            []
            [ Html.text "My computer" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ myLaptop.ram) ]
                , Html.li [] [ Html.text ("Modelo: " ++ myLaptop.model) ]
                , Html.li [] [ Html.text ("Marca: " ++ myLaptop.brand) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
