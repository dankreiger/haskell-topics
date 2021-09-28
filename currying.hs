divides :: Int -> Int -> Bool
divides a b = mod b a == 0


-- example
applied :: Int -> Bool
applied = divides 3
-- try in console :t applied

divisibleByFour :: Int -> Bool
divisibleByFour = divides 4
alwaysTrue :: Int -> Bool
alwaysTrue = divides 1


factorOfTwelve :: Int -> Bool
factorOfTwelve = flip divides 12
-- (flip divides) 5 10