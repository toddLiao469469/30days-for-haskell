a :: Integer
a = 1

b :: Integer
b = 100

main :: IO ()
main = do
  let b = 10
  do
    print ("b = " ++ show b)
  let a = 2
   in do
        print ("a = " ++ show a)
        print ("a + b = " ++ show (a + b))
  print ("a = " ++ show a)
  print ("b = " ++ show b)
  print ("a + b = " ++ show (a + b))

