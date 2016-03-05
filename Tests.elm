module Tests (..) where

import Dict
import DictKeyValues
import ElmTest exposing (..)


testDict : Dict.Dict String Int
testDict =
  Dict.fromList
    [ ( "bob", 3 )
    ]


all : Test
all =
  suite
    "DictKeyValues.swap"
    [ defaultTest
        (assertEqual
          "bob"
          (Maybe.withDefault "" (Dict.get 3 (DictKeyValues.swap testDict)))
        )
    ]
