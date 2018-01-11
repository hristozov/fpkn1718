import           Unit

fact :: Integral a => a -> a
fact n = foldr1 (*) [1..n]

main = do {
  assertEqual 120 (fact 5);
}
