import           Control.Monad.Writer

logNumber :: Int -> Writer [String] Int
logNumber x = writer (x, ["Got number: " ++ show x])

logNumber' :: Int -> Writer [String] Int
logNumber' x = do
  tell ["Got number: " ++ show x]
  return x

addWithLog :: Writer [String] Int -> Writer [String] Int -> Writer [String] Int
addWithLog a b = do
  x <- a
  y <- b
  tell ["added "++ show x ++ " and " ++ show y]
  return (x + y)

main :: IO ()
main = do
  print $ runWriter $ addWithLog (logNumber 10) (logNumber 1)
  print $ runWriter $ addWithLog (logNumber 1) $ addWithLog (logNumber 2) (logNumber 3)   
  print $ runWriter $ addWithLog (logNumber' 3) (logNumber' 12)
