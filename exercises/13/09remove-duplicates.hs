import           Unit

remDups :: Eq a => [a] -> [a]
remDups = foldl helper [] where
  helper result x
   | x `elem` result = result
   | otherwise = result ++ [x]

main = do {
  assertEqual [1, 2, 3, 4] (remDups [1, 2, 2, 2, 3, 4, 4, 3, 3]);
}
