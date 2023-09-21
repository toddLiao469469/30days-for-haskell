transformStr :: (String -> String) -> [String] -> [String]
transformStr f s = case s of
    [] -> []
    (x:xs) -> f x : transformStr f xs


strAddExclamation :: [String] -> [String]
strAddExclamation  = transformStr  (++ "!")

main:: IO()

main = do
  print "hello world"

  print (transformStr (++ "!") ["foo", "bar", "baz"])
  print (strAddExclamation ["foo", "bar", "baz"])


  print (map (+1) [1,2,3] )
  print (map (elem 'f') ["foo","bar","baz"] )
  print (map (*2) [x*2 | x <-[1..5]] )

  print (map (++"!") ["foo","bar","baz"])