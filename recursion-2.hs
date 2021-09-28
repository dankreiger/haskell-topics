
factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n - 1)

rangeSum :: Int -> Int -> Int 
rangeSum a b | a > b      = 0
             | otherwise  = a + rangeSum (a + 1) b


slowFibonacci :: Integer -> Integer
slowFibonacci 0 = 0
slowFibonacci 1 = 1
slowFibonacci n = slowFibonacci (n - 1) + slowFibonacci (n - 2)


fibHelper :: Integer -> Integer -> Integer -> Integer
fibHelper smaller larger 0 = larger
fibHelper smaller larger steps = fibHelper larger (smaller + larger) (steps - 1)

fastFibonacci :: Integer -> Integer
fastFibonacci 0 = 0
fastFibonacci n = fibHelper 0 1 (n - 1)


sequenceCount :: Integer -> Integer -> Integer
sequenceCount 0 _ = 1
sequenceCount _ 0 = 1
sequenceCount n0 n1 = sequenceCount n0 (n1 - 1) + sequenceCount (n0 - 1) n1
