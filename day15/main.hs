data Shape = Triangle Double Double Double | Rectangle Double Double Double Double deriving (Show)

surface :: Shape -> Double
surface (Triangle a b c) = a + b + c
surface (Rectangle a b c d) = a + b + c + d 


parseToInt :: String -> Maybe Int
parseToInt str =
  case reads str of
    [(x, "")] -> Just x 
    _         -> Nothing 

main :: IO ()
main = do
  print $ surface $ Triangle 3.0 4.0 5.0 -- 12.0
  print $ surface $ Rectangle 4.0 4.0 4.0 4.0 -- 16.0

  putStrLn "input a integer:"
  input <- getLine
  case parseToInt input of
    Just num -> putStrLn $ "output: " ++ show num
    Nothing  -> putStrLn "invalid input"