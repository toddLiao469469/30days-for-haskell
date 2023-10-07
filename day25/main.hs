import Control.Monad (guard)

listMonad :: [(Int,Char)]
listMonad = do
  a <- [1,2,3]
  b <- ['a','b']
  return (a,b)

listMonad' :: [(Int,Char)]
listMonad' = do
  a <- [1,2,3]
  b <- ['a','b']
  guard (a == 2 || b =='a')
  return (a,b)

main :: IO ()
main = do
  print listMonad
  print listMonad'