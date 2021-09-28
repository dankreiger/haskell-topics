compoundInterestFixed :: Int -> Double
compoundInterestFixed n | n <= 0    = 1000
                        | otherwise = 1.05 * compoundInterestFixed (n - 1)

main = print (compoundInterestFixed (-3))