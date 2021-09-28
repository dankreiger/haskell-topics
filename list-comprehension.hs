import Data.Char

-- [expression | generators_and_guards ]

-- a generator has the form 
-- pattern <- expression

evenSquares :: [Integer]
evenSquares = [x^2 | x <- [1..], x `mod` 2 == 0]

-----------------

primes :: [Integer]
primes = [p | p <- [1..], length (divisors p) == 2]

divisors :: Integer -> [Integer]
divisors n = [k | k <- [1..n], n `mod` k == 0]

-- main = print (take 5 evenSquares)

-- clean :: String -> String
-- clean = filter (\x -> isLetter x || x == ' ') . map toLower
-- as list comprehension
clean :: String -> String
clean str = [toLower x | x <- str, isLetter x || x == ' ']

-- concat :: [[a]] -> [a]
-- concat = foldr (++) []
-- as list comprehension
concat' xss = [x | xs <- xss, x <- xs]
