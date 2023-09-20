calcTriangle :: Int -> Int -> Int -> String
calcTriangle a b c
    | a + b <= c || a + c <= b || b + c <= a = "Invalid"
    | a == b && b == c = "Equilateral"
    | a == b || b == c || a == c = "Isosceles"
    | otherwise = "Scalene"

calcTriangle' :: Int -> Int -> Int -> String
calcTriangle' a b c
    | a + b <= c || a + c <= b || b + c <= a = "Invalid"
    | abEq && bcEq = "Equilateral"
    | abEq || bcEq || acEq = "Isosceles"
    | otherwise = "Scalene"
    where
        abEq = a == b
        bcEq = b == c
        acEq = a == c


calcTriangle'' :: Int -> Int -> Int -> String
calcTriangle'' a b c
    | isValid a b c || isValid a c b || isValid b c a= "Invalid"
    | abEq && bcEq = "Equilateral"
    | abEq || bcEq || acEq = "Isosceles"
    | otherwise = "Scalene"
    where
        abEq = a == b
        bcEq = b == c
        acEq = a == c
        isValid x y z = x + y <= z



emailList :: [String]
emailList = ["foo@gmail.com","bar@gmail.com","baz"]

filterValidEmail :: [String] -> [String]
filterValidEmail xs = 
    [email | email <- xs,  isValid email ]
    where 
        isValid email = '@' `elem` email &&  '.' `elem` email


sumList :: Num a => [a] -> a
sumList [] = 0
sumList (x:xs) = x + sumList xs


sumList' :: Num a => [a] -> a
sumList' list = case list of
    [] -> 0
    (x:xs) -> x + sumList' xs



foo x =
    [case x of
        'a' -> 10
        'b' -> 11
        'c' -> 12
        'd' -> 13
        'e' -> 14
        'f' -> 15
        _ -> error "Invalid hex digit"
    ,1]

main :: IO()
main = do

    putStrLn "--- calcTriangle ---"
    print (calcTriangle 6 7 20)
    print (calcTriangle 6 6 6)
    print (calcTriangle 3 3 6)
    print (calcTriangle 3 4 5)

    putStrLn "\n--- calcTriangle' ---"

    print (calcTriangle' 6 7 20)
    print (calcTriangle' 6 6 6)
    print (calcTriangle' 3 3 6)
    print (calcTriangle' 3 4 5)

    putStrLn "\n\n--- calcTriangle'' ---"
    print (calcTriangle'' 6 7 20)
    print (calcTriangle'' 6 6 6)
    print (calcTriangle'' 3 3 5)
    print (calcTriangle'' 3 4 5)

    putStrLn "\n\n--- emailListValid ---"
    print (filterValidEmail emailList)

    putStrLn "\n\n--- sumList ---"
    print (sumList [1..10])

    putStrLn "\n\n--- sumList' ---"
    print (sumList' [1..10])
    print (filterValidEmail emailList)

    putStrLn "\n\n--- foo ---"
    print (foo 'a')