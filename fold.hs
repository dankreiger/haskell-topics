-- sum' :: [Int] -> Int
-- sum' [] = 0
-- sum' (x:xs) = x + sum' xs 

-- concat' :: [[a]] -> [a]
-- concat' [] = []
-- concat' (xs:xss) = xs ++ concat' xss

sum' :: [Int] -> Int
sum' = sum

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' _ z [] = z
foldr' f z (x:xs) = f x (foldr' f z xs)

any' :: [Bool] -> Bool
-- any' = foldr (||) False
any' = or


all' :: [Bool] -> Bool
-- all' = foldr (&&) True
all' = and

product' :: [Int] -> Int
-- product' = foldr (*) 1
product' = product


-- elem' :: (a -> Bool) -> [a] -> Bool
-- elem' el [] = False
-- elem' el (x:xs) = el x || elem' el xs



elem' el = any' . map (== el)

mapAsFold :: (a -> b) -> [a] -> [b]
mapAsFold f = map (\ x -> f x)

mapAsLeftFold :: (a -> b) -> [a] -> [b]
mapAsLeftFold f = foldl (\xs x -> f x : xs) []

-- mapAsFold (*2) [1..3]
-- mapAsLeftFold (*2) [1..3]


filterAsFold :: (a -> Bool) -> [a] -> [a]
filterAsFold p = foldr (\x xs -> if p x then x:xs else xs) []


-- foldl :: (b -> a -> b) -> b -> [a] -> b
-- foldl _ z [] = z
-- foldl f z (x:xs) = foldl f (f z x) xs


foldReverse :: [a] -> [a]
foldReverse = foldl (flip (:)) []


-- main = print (foldReverse "sdrawkcab")


-- maxInt = foldr1 (\x y -> if x > y then x else y)
