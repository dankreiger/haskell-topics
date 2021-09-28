sign' :: Int -> Int
sign' n = if n > 0 then 1
             else if n < 0 then -1
             else 0

-- same as guard version
sign :: Int -> Int
sign n | n > 0 = 1
       | n < 0 = -1
       | otherwise = 0


both :: Bool -> Bool -> Bool
both x y = case (x, y) of
               (True, True) -> True
               _ -> False

