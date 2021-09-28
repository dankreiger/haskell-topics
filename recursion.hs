-- negative numbers will cause an infinite loop
compoundInterest :: Int -> Double
compoundInterest 0 = 1000
compoundInterest n = 1.05 * compoundInterest (n - 1)

main = print (compoundInterest 3)


-- compoundInterest 2 
--   = 1.05 * compoundInterest (2 - 1)
--   = 1.05 * compoundInterest 1
--   = 1.05 * 1.05 * compoundInterest (1 - 1)
--   = 1.05 * 1.05 * compoundInterest 0
--   = 1.05 * 1.05 * 1000
--   = 1.1025 * 1000
--   = 1102.5