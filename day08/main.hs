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