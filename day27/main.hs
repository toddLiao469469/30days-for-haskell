
newtype IntList = IntList {getIntList:: [Int]} deriving (Eq, Show)
data IntList' = IntList' {getIntList':: [Int]} deriving (Eq, Show)

newtype IntWrapper = IntWrapper Int deriving (Eq, Show)

instance Semigroup IntWrapper where
    (IntWrapper a) <> (IntWrapper b) = IntWrapper (a + b)

instance Monoid IntWrapper where
    mempty = IntWrapper 0


main :: IO ()
main = do
  print $ IntList [1,2,3]  -- IntList {getIntList = [1,2,3]}
  print $ IntList' [1,2,3]  -- IntList' {getIntList' = [1,2,3]}
  print $ getIntList $ IntList [1,2,3]   -- [1,2,3]
  print $ getIntList' $ IntList' [1,2,3]  -- [1,2,3]
  print $ tail $ getIntList $ IntList [1,2,3]  -- [2,3]
  print $ head $ getIntList $ IntList [1,2,3]  -- 1

  print $ IntWrapper 1 <> IntWrapper 2 <> IntWrapper 3   -- IntWrapper 6
  print $ mconcat [IntWrapper 1, IntWrapper 2, IntWrapper 3]  -- IntWrapper 6


