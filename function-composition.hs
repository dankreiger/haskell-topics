square :: Int -> Int
square x = x ^ 2

double :: Int -> Int
double x = x * 2

next :: Int -> Int 
next x = x + 1


nextAfterDouble :: Int -> Int
nextAfterDouble = next . double

quadruple :: Int -> Int
quadruple = double . double

-- compose :: (Int -> Int) -> (Int -> Int) -> Int -> Int
-- compose f g x = f (g x)


-- applyTimes :: (Int -> Int) -> Int -> (Int -> Int)
-- applyTimes f n | n == 1 = f
--                | otherwise = f . applyTimes f (n - 1)


--  or
applyTimes :: (Int -> Int) -> Int -> (Int -> Int)
applyTimes f 1 = f
applyTimes f n = f . applyTimes f (n - 1)