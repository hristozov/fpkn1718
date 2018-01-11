import           Unit

inits :: [a] -> [[a]]
inits = foldr helper [[]] where
  helper x result = [] : map (x:) result

main = do {
  assertEqual [[], [1], [1, 2], [1,2,3]] (inits [1,2,3]);
}
