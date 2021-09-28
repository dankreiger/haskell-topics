-- data Either a b = Left a | Right b 

newtype Fraction = Fraction (Int, Int) deriving (Show)

makeFraction :: (Int, Int) -> Either String Fraction
makeFraction (_, 0) = Left "Denominator cannot be 0"
makeFraction (n, d) | d < 0     = Left "Denominator cannot be negative"
                    | otherwise = Right (Fraction (n, d))

                    