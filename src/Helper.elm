module Helper exposing (..)


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
                " "
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
