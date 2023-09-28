data List = Empty | Cons Int List deriving(Show)

infixr 5 :!
data List' = Empty' | Int :! List' deriving (Show)

infixr 5  .++
(.++) :: List' -> List' -> List'
Empty' .++ ys = ys
(x :! xs) .++ ys = x :! (xs .++ ys)

main::IO()
main = do
  let lt1 = Cons 1 Empty
  let lt2 = Cons 2 lt1
  let lt3 = 3 `Cons` lt2

  print lt1
  print lt2
  print lt3


  let lt1' = 1 :! Empty'
  let lt2' = 2 :! lt1'
  let lt3' = 3 :! lt2'

  print lt1'
  print lt2'
  print lt3'
  print $ lt1' .++ lt2'
