square :: Int -> Int
square x = x ^ 2

double :: Int -> Int
double x = x * 2

next :: Int -> Int 
next x = x + 1


applyTwice :: (Int -> Int) -> Int -> Int
applyTwice f x = f (f x)


quadruple :: Int -> Int
quadruple = applyTwice double

timesSixteen :: Int -> Int
timesSixteen = applyTwice quadruple

curryISC :: ((Int, String) -> Char) -> Int -> String -> Char
curryISC f i s = f (i, s)

uncurryISC :: (Int -> String -> Char) -> (Int, String) -> Char
uncurryISC f(i, s) = f i s

flipISC :: (Int -> String -> Char) -> String -> Int -> Char
flipISC f i s = f s i