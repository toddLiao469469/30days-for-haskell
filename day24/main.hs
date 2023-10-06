import           Text.Read (readMaybe)

foo :: Int -> Int -> Maybe String
foo a b= do
  x <- Just a 
  y <- Just b
  Just (show $ x + y)

main' :: IO ()
main' = print "Enter a number" >> getLine >>= \x -> 
        print "Enter another number" >> getLine >>= \y ->
        print $ "The sum is: " ++ show (read x + read y :: Int)

main :: IO ()
main = do
  main'
  print $ foo 1 2

  print "Enter another number"
  x <- readMaybe <$> getLine
  print "Enter another number"
  y <- readMaybe <$> getLine
  case (+) <$> x <*> y of
    Nothing -> print "Invalid input"
    Just z  -> print $ "The sum is " ++ show z
