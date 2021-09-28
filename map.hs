import Data.Char ( toLower )

-- implementation of map
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs


roundList :: [Double] -> [Integer]
roundList = map round
lowerString :: [Char] -> [Char]
lowerString = map toLower


