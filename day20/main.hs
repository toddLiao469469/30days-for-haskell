import Control.Applicative

addMaybe :: Maybe Int -> Maybe Int -> Maybe Int
addMaybe Nothing _ = Nothing
addMaybe _ Nothing = Nothing
addMaybe (Just x) (Just y) = Just (x + y)



main :: IO()
main = do 
  print $ pure (*) <*>[1..5] <*> pure 2 -- [2,4,6,8,10]

  print $ addMaybe (Just 1) (Just 2) -- Just 3
  print $ addMaybe (Just 1) Nothing -- Nothing
  print $ addMaybe Nothing (Just 2) -- Nothing
  print $ addMaybe Nothing Nothing -- Nothing

  print $ Just (+1) <*> Just 2 -- Just 3
  print $ (+) <$> Just 1 <*> Just 2 -- Just 3
  print $ pure (+) <*> Just 1 <*> Just 2 -- Just 3
  print $ pure (+) <*> Just 1 <*> pure 2 -- Just 3
  print $ pure (+) <*> Just 1 <*> Nothing -- Nothing

  