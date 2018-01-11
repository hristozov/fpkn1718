import           Data.List
import           Unit

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x result -> if p x then x : result else result) []

filter2' :: (a -> Bool) -> [a] -> [a]
filter2' p = foldl (\result x -> if p x then result ++ [x] else result) []

main = do {
  assertEqual [2,4..10] (filter' even [1..10]);
  assertEqual [2,4..10] (filter2' even [1..10]);
}
