import           Unit

sum' :: Num a => [a] -> a
sum' = foldr1 (+)

main = do {
  assertEqual 6 (sum' [1,2,3]);
}
