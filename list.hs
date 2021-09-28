data List a = Empty | NonEmpty a (List a) deriving (Show)

elemList :: (Eq a) => a -> List a -> Bool
elemList _ Empty = False
elemList a (NonEmpty x xs) | x == a    = True
                           | otherwise = elemList a xs