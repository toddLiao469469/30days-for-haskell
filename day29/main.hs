import Control.Monad.State 



countNumbers :: State Int Int
countNumbers = do
  n <- get  
  put (n + 1)  
  return n

countNumbersWithoutState :: Int -> (Int, Int)
countNumbersWithoutState count = (count, count + 1)


main :: IO()
main = do

  let initialCount = 0
  
  let (prevState1, state1) = runState countNumbers initialCount
  let (prevState2, state2) = runState countNumbers state1
  print $ "State Monad PrevState 1: " ++ show prevState1 ++ ", Count 1: " ++ show state1
  print $ "State Monad PrevState 2: " ++ show prevState2 ++ ", Count 2: " ++ show state2

  let (prevState3, state3) = runState (countNumbers >> countNumbers  >> countNumbers) state2
  print $ "State Monad PrevState 3: " ++ show prevState3 ++ ", Count 3: " ++ show state3


  let (prevState1', state1') = countNumbersWithoutState initialCount
  let (prevState2', state2') = countNumbersWithoutState state1'
  print $ "Without State Monad PrevState 1: " ++ show prevState1' ++ ", Count 1: " ++ show state1'
  print $ "Without State Monad PrevState 2: " ++ show prevState2' ++ ", Count 2: " ++ show state2'
  
