data Color = Red | Green | Blue

instance Eq Color where
    Red == Red = True
    Green == Green = True
    Blue == Blue = True
    _ == _ = False

instance Show Color where
    show Red = "Color: Red"
    show Green = "Color: Green"
    show Blue = "Color: Blue"

main:: IO()
main = do
    print $ Red == Red -- True
    print $ Red == Green -- False
    print $ Red == Blue -- False
    print $ Green == Green -- True
    print $ Green == Blue -- False
    print $ Blue == Blue -- True
    print $ show Red -- "Color: Red"
    print $ show Green -- "Color: Green"
    print $ show Blue -- "Color: Blue"