multByTwo x = x * 2

-- (Double, Double) -> (Double)
perimeter :: Num a => (a, a) -> a
-- perimeter (a, b) = a * 2 + b * 2
perimeter tup = fst tup * 2 + snd tup * 2
-- (Double, Double) -> (Double)
area :: Num a => (a, a) -> a
-- area (a, b) = a * b
-- area tup = fst tup * snd tup
area = uncurry (*)

-- (Double, Double) -> (Double, Double)
areaAndPerimeter :: Num b => (b, b) -> (b, b)
-- areaAndPerimeter tup = (area(a, b), perimeter(a, b))
areaAndPerimeter tup = (area tup, perimeter tup)

both :: (Bool, Bool) -> Bool
both (True, True) = True 
both (_, _) = False

isSquare :: Eq a => (a, a) -> Bool
isSquare (a, b) | a == b = True 
                | otherwise = False 

ifThenElse :: (Bool, Int, Int) -> Int
ifThenElse (b, condA, condB) | b = condA
                             | otherwise = condB