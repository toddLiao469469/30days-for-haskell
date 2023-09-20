
word :: Char -> String
word 'a' = "Apple"
word 'b' = "Banana"
word 'c' = "Candy"

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

concatFirstElement :: [String] -> String
concatFirstElement [] = "Empty list, whoops!" 
concatFirstElement all@(x:_) = "The first element of the list " ++ show all ++ " is " ++ x

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)


main :: IO ()
main = do
  print (word 'a')
  print (word 'b')
  print (word 'c')

  print (sumList [1..5])

  print (concatFirstElement ["foo","bar","baz"])

  print (fibonacci 10)
