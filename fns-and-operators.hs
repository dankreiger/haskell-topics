-- Prefix
-- Prelude> (+) 3 5
-- 8
-- Prelude> (/) 8 2
-- 4.0
-- ghci 🐶> mod 5 4
-- 1
-- ghci 🐶> mod 5 4
-- 1
-- ghci 🐶> div 8 4
-- 2


-- Infix
-- ghci 🐶> (+) 3 5
-- 8
-- ghci 🐶> 8 / 2
-- 4.0
-- ghci 🐶> 5 `mod` 4
-- 1
-- ghci 🐶> 8 `div` 4
-- 2

-- Partially applying operators
timesTwo' :: Int -> Int
timesTwo' = (*) 2

equalToC' :: Char -> Bool
equalToC' = (==) 'c'


-- shorthand
timesTwo :: Integer -> Integer
timesTwo = (2*)
equalToC :: Char -> Bool
equalToC = ('c' ==)
dividedByThree :: Double -> Double
dividedByThree = (/3)