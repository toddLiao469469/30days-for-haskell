import           Control.Monad

divide :: Int -> Int -> Maybe Int
divide _ 0 = Nothing
divide x y = Just (x `div` y)

main :: IO ()
main = do
  print $ Just 20 >>= (`divide` 10) -- Just 2
  print $ Just 20 >>= (`divide` 0) -- Nothing
  print $ Just 20 >>= (`divide` 10) >>= (`divide` 2) -- Just 1
  print $ Just 20 >>= (`divide` 0) >>= (`divide` 2) -- Nothing

  let result =
        case 20 `divide` 0 of
          Nothing -> Nothing
          Just x ->
            case x `divide` 2 of
              Nothing -> Nothing
              y -> y

  let result' = 
          case 20 `divide` 10 of
            Nothing -> Nothing
            Just x -> 
              case x `divide` 2 of
                Nothing -> Nothing
                y -> y -- Just 1
        
  print result
  print result'
