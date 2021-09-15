maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c =
  if a>c && a>b
  then a
  else
    if b>c
    then b
    else c

maxOfThree' :: Int -> Int -> Int -> Int
maxOfThree' a b c
    | a>c && a>b = a
    | b>c = b
    | otherwise = c
