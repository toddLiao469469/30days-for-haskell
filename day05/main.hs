import Data.Char (toLower)


foo :: [Int] -> [Int]
foo  l = [if x>10 then x+1 else x*2| x <- l , x `mod` 3 /= 0]

emailList :: [String]
emailList = ["foo@gmail.com","bar@gmail.com","baz"]


main :: IO ()

main = do
  putStrLn (show ([x*17 | x <- [1..17]]))
  putStrLn (show ([x*17 | x <- [1..17],x `mod` 2 /=0]))


  putStrLn (show (foo [1..20]))
  putStrLn (show ([x*y | x<-[1..5],y<-[6..10], (x+y) `mod` 5 /= 0]))

  putStrLn (show ([toLower x| x<- "asdqwAsdcqAsdasd" ]))
  putStrLn (show ([x| x<- "asdqwAsdcqAsdasd" , x `elem` ['a'..'z']]))

  -- just simple email validation
  putStrLn (show ([email | email <- emailList,  '@' `elem` email &&  '.' `elem` email ]))





