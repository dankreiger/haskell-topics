isTriangleTuple :: (Eq a, Num a) => (a, a, a) -> Bool
isTriangleTuple (alpha, beta, gamma) = alpha + beta + gamma == 180

-- isTriangle :: Double -> Double -> Double -> Bool
isTriangle :: (Eq a, Num a) => a -> a -> a -> Bool
isTriangle alpha beta gamma = alpha + beta + gamma == 180

-- mustBeSixty :: Double -> Bool
mustBeSixty :: Integer -> Bool
mustBeSixty = isTriangle 100 20
sumToNinety :: Integer -> Integer -> Bool
sumToNinety = isTriangle 90


dividesTuple :: (Int, Int) -> Bool
dividesTuple (a, b) = mod b a == 0
-- :t curry dividesTuple

divides :: Int -> Int -> Bool
divides a b = mod b a == 0
-- :t uncurry divides

divisibleByFour :: Int -> Bool
divisibleByFour = curry dividesTuple 4


inRange :: (Int, Int, Int) -> Bool
inRange(lower, upper, query) = lower <= query && query <= upper



inRangeCurried :: Int -> Int -> Int -> Bool
inRangeCurried lower upper query = inRange(lower, upper, query)

betweenTenAndTwenty :: Int -> Bool
betweenTenAndTwenty = inRangeCurried 10 20