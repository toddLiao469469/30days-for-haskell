

listSum :: [Int] -> Int
listSum x = if null x then 0 else head x + sum (tail x) 

main :: IO ()
main = do
  let x = [1,2,3,4,5,6,7,8,9,10 ]
  putStrLn (show(listSum x))