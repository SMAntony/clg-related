maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c
    | a>c && a>b = a
    | b>c = b
    | otherwise = c