data Triangle = Triangle Double Double Double deriving (Show,Eq)
data Point = Point Double Double Double deriving (Show,Eq)

data  Triangle' = Triangle'  { 
	ab :: Double,
	bc :: Double,
	ca :: Double
} deriving (Show)

main :: IO ()
main = do

  let t0 =  Triangle 1.0 2.0 3.0
  let t1 =  Triangle 1.0 2.0 3.0

  let p0 = Point 1.0 2.0 3.0
  let p1 = Point 1.0 2.0 3.0 

  print $ t0
  print $ t1
  print $ t0==t1

  print $ p0
  print $ p1
  print $ p0==p1

  let t0' = Triangle' 1.0 2.0 3.0

  print $ t0'
