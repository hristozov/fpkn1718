import           Unit

minimum' :: Ord a => [a] -> a
minimum' = foldr1 min

maximum' :: Ord a => [a] -> a
maximum' = foldr1 max

main = do {
  assertEqual 1 (minimum' [1,2,3]);
  assertEqual 3 (maximum' [1,2,3]);
}
