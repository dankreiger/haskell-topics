solveQuadratic' :: Double -> Double -> (Double, Double)
solveQuadratic' p q = (-p/2 - sqrt ((p/2)^2 - q), -p/2 + sqrt ((p/2)^2 - q))

-- main = print (solveQuadratic' 1 (-2))

-- with let
solveQuadratic :: Double -> Double -> (Double, Double)
solveQuadratic p q = let
                         p' = -p/2
                         d  = sqrt (p'^2 - q)
                     in (p' - d, p' + d)

numberOfSolutions :: Double -> Double -> Int
numberOfSolutions p q = let
                            (a, b) = solveQuadratic p q
                        in if a == b then 1 else 2

solveQuadratic_ :: Double -> Double -> (Double, Double)
solveQuadratic_ p q = (p' - d, p' + d)
    where p' = - p / 2
          d  = sqrt (p'^2 - q)


fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci n = fibHelper 0 1 (n - 1)
    where fibHelper :: Int -> Int -> Int -> Int     
          fibHelper smaller larger 0 = larger
          fibHelper smaller larger steps = fibHelper larger (smaller + larger) (steps - 1)          


divisors :: Int -> Int 
-- modify the code below!
divisors 1 = 1
divisors n = divisorHelper n 1
    where divisorHelper :: Int -> Int -> Int
          divisorHelper n i | i > n = 0
                            | mod n i == 0 = 1 + divisorHelper n (i + 1)
                            | otherwise    = divisorHelper n (i + 1)       


