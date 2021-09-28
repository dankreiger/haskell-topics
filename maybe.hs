-- data Maybe a = Nothing | Just a


safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x


-- safeHead :: [a] -> Maybe a
-- safeHead [] = Nothing
-- safeHead (x:_) = Just x

showHead :: (Show a) => [a] -> String
-- showHead xs = case safeHead xs of 
--                 Nothing -> "Empty list!"
--                 Just x  -> show x
showHead xs = maybe "Empty list!" show (safeHead xs)


safeLast :: [a] -> Maybe a 
safeLast = safeHead . reverse
