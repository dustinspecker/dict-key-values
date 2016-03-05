module DictKeyValues (swap) where

{-| Swap the key value pairs of a Dict

# Usage
@docs swap
-}

import Dict


{-| Swap the key value pairs of a Dict

    people = Dict.fromList [ ("Bob", 3), ("Jan", 7) ]

    swap people -- Dict.fromList [ (3, "Bob"), (7, "Jan") ]
-}
swap : Dict.Dict comparable comparable' -> Dict.Dict comparable' comparable
swap dict =
  (Dict.toList dict)
    |> List.map (\( k, v ) -> ( v, k ))
    |> Dict.fromList
