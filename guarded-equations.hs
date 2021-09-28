import Data.Char

sign :: Int -> Int
sign i | i > 0 = 1
       | i < 0 = -1
       | i == 0 = 0

isZero :: Int -> Bool
isZero n | n == 0 = True
         | n /= 0 = False


isPalindome :: String -> Bool
isPalindome str | reverse str == str = True
                | otherwise          = False


fizzBuzz :: Int -> [Char]
fizzBuzz i | mod i 15 == 0 = "fizzbuzz"
           | mod i 5 == 0 = "buzz"
           | mod i 3 == 0 = "fizz"
           | otherwise = show i

myFavouriteCharacter :: Char -> Bool
myFavouriteCharacter 'T' = True


charType c | isUpper c = "Upper"
           | isLower c = "Lower"


main :: IO ()
main = print(isZero( sign (-6) ))