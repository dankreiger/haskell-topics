import Data.Char
applyTwice :: (Int -> Int) -> Int -> Int
applyTwice f = f . f

curryISC :: ((Int, String) -> Char) -> Int -> String -> Char
curryISC f = \i s -> f (i, s)

uncurryISC :: (Int -> String -> Char) -> (Int, String) -> Char
uncurryISC f = \(i, s) -> f i s

flipISC :: (Int -> String -> Char) -> String -> Int -> Char
flipISC f = \s i -> f i s

-- main = do 
  -- print (applyTwice (\x -> x * 2) 8)
  -- print (applyTwice (\x -> x + 1) 7)

applyUntil :: (Int -> Bool) -> (Int -> Int)-> Int -> Int 
applyUntil p f x | p x == True = x
                 | otherwise   = applyUntil p f (f x)


greatestOddDivisor :: Int -> Int
greatestOddDivisor = applyUntil (\x -> mod x 2 == 1) (\x -> div x 2) 

smallestNatThat :: (Int -> Bool) -> Int
smallestNatThat p = applyUntil p (\x -> x + 1) 1


-- *HOF> smallestNatThat (\x -> isLetter (chr x))
-- 65
-- *HOF> smallestNatThat (isLetter . chr) -- alternative version
-- 65