squareEven :: [Int] -> [Int]
squareEven xs = map (^ 2) (filter even xs)

squareRootOfPositives :: [Double] -> [Double]
squareRootOfPositives xs = map sqrt (filter (> 0) xs)

squareRootOverTwo :: [Double] -> [Double]
squareRootOverTwo xs = filter (> 2) (map sqrt xs)


add:: Num a => a -> a -> a
add x y = x + y

add' :: Num a => a -> a -> a
add' = \x -> \y -> x + y


main :: IO ()
main = do
  print (squareEven [1 .. 20])
  print (squareRootOfPositives [1, 15, -3, 8, 6, -2, -1, 10])
  print (squareRootOverTwo [1 .. 20])

  print (filter (\x -> x `mod` 3 == 0 || x `mod` 7 == 0) [1 .. 30])

  print (map (\(x:xs) -> 2 * x + sum xs) [[1 .. 5], [5 .. 10], [11, 15]])


  print (add 1 2)
  print (add' 1 2)