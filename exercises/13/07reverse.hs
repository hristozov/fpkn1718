import           Unit

reverse' :: [a] -> [a]
reverse' = foldr (\ x result -> result ++ [x]) []

reverse2' :: [a] -> [a]
reverse2' = foldl (flip (:)) []

main = do {
  assertEqual [3,2,1] (reverse' [1,2,3]);
  assertEqual [3,2,1] (reverse2' [1,2,3]);
}
