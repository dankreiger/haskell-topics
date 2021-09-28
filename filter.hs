import Data.Char
import Data.List
removePunctuation' :: [Char] -> [Char]
removePunctuation' [] = []
removePunctuation' (x:xs) | not (isPunctuation x) = x : removePunctuation' xs
                         | otherwise             = removePunctuation' xs

-- main = print (removePunctuation "g%r,.;[ea]t")

removeEmpty' :: [[a]] -> [[a]]
removeEmpty' [] = []
removeEmpty' (xs:xss) | not (null xs) = xs : removeEmpty' xss
                     | otherwise     = removeEmpty' xss

-- main = print (removeEmpty [[1, 2], [], [6], []])


filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs) | p x       = x : filter' p xs
                 | otherwise = filter' p xs


removePunctuation = filter (not . isPunctuation)
-- removeEmpty = filter (\x -> length x > 0)



wordFrequencies :: String -> [(String, Int)]
wordFrequencies s =
  let cleaned = (filter (\x -> isLetter x || x == ' ') . map toLower) s
      groupedWords = (group . sort . words) cleaned
  in map (\xs -> (head xs, length xs)) groupedWords

-- main = print (wordFrequencies "It was the best of times, it was the worst of times,")

frequentWordsOnly :: [(String, Int)] -> [String]
frequentWordsOnly = map fst . filter (\x -> snd x >= 5)