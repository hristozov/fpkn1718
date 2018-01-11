import           Unit

concat' :: [[a]] -> [a]
concat' = foldr (++) []

main = do {
  assertEqual [1,2,3,4] (concat' [[1],[2,3],[4]]);
}
