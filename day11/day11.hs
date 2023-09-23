sum' :: Num a => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

sum'' :: Num a => [a] -> a
sum'' xs = foldr (\x acc -> x + acc) 0 xs

add5 :: Num a => a -> a
add5 = (+ 5)

squere :: Num a => a -> a
squere = (^ 2)

substract4 :: Num a => a -> a
substract4 = subtract 4

main :: IO ()
main = do
  print $ sum' [4, 2, 3, 1, 2, 2]
  print $ sum'' [4, 2, 3, 1, 2, 2]
  print $ foldl1 (\acc x -> acc + x) [1 .. 5]
  print $ foldr1 (\x acc -> acc + x) [1 .. 5]
  
  print $ map (\x -> substract4 (squere (add5 x))) [1 .. 5]
  print $ map (substract4 . squere . add5) [1 .. 5]
