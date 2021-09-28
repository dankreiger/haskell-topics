data Tree a = Nil | Node a (Tree a) (Tree a) deriving (Show)

intTree :: Tree Int
intTree =
  Node 4
    (Node 7
      (Node 19 Nil Nil)
      Nil
    )
    (Node (-3)
      (Node 8 Nil Nil)
      (Node 12 Nil Nil)
    )


elemTree :: (Eq a) => a -> Tree a -> Bool
elemTree _ Nil = False
elemTree a (Node x left right) | a == x    = True
                               | otherwise = elemTree a left || elemTree a right


inorder :: Tree a -> [a]
inorder Nil = []
inorder (Node x left right) = inorder left ++ [x] ++ inorder right


mapTree :: (a -> b) -> Tree a -> Tree b
mapTree _ Nil = Nil
mapTree f (Node x left right) = Node (f x) (mapTree f left) (mapTree f right)

foldTree :: (a -> b -> b -> b) -> b -> Tree a -> b
foldTree _ z Nil = z
foldTree f z (Node x left right) = f x (foldTree f z left) (foldTree f z right)


-- elemTree a = foldTree check False
--   where check x l r = x == a || l || r
-- inorder = foldTree combine []
--   where combine x l r = l ++ [x] ++ r


leaves :: Tree a -> [a]
leaves = foldTree count []
    where count x [] [] = [x]       
          count _ left right = left ++ right