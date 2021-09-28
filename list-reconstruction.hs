takeAsLong :: [a] -> (a -> Bool) -> [a]
takeAsLong [] _ = []
takeAsLong (x:xs) p | p x = x:takeAsLong xs p
                    | otherwise = []


fastReverse :: [a] -> [a]
fastReverse xs = fastReverseAcc [] xs
    where fastReverseAcc acc []       = acc
          fastReverseAcc acc (x : xs) = fastReverseAcc (x:acc) xs
