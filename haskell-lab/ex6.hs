import Data.List (permutations, minimum, delete)

--Selection Sort
ssort :: Ord a => [a] -> [a]
ssort [] = []
ssort xs = let { x = minimum xs } 
           in  x : ssort (delete x xs)

--Insertion Sort
isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:xs) = insert x $ isort xs
    where
    insert x [] = [x]
    insert x (y:ys)
      |x<=y = x:y:ys
      |otherwise = y: insert x ys

--Bubble Sort
bsort :: Ord a => [a] -> [a]
bsort s = case bsort' s of
               t | t == s    -> t
                 | otherwise -> bsort t
  where bsort' (x:x2:xs) | x > x2    = x2:(bsort' (x:xs))
                         | otherwise = x:(bsort' (x2:xs))
        bsort' s = s

--Permutation Sort
sorted :: Ord a => [a] -> Bool    --check sort
sorted (x:y:xs) = x <= y && sorted (y:xs)
sorted _        = True
psort :: Ord a => [a] -> [a]     --sort function
psort = head . filter sorted . permutations

--Merge Sort
merge :: Ord a => [a] -> [a] -> [a] --Merge Function
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x <= y    = x:merge xs (y:ys)
                    | otherwise = y:merge (x:xs) ys
msort :: Ord a => [a] -> [a] --Sort Function
msort [] = []
msort [a] = [a]
msort xs = merge (msort (firstHalf xs)) (msort (secondHalf xs))

firstHalf  xs = let { n = length xs } in take (div n 2) xs
secondHalf xs = let { n = length xs } in drop (div n 2) xs

--QuickSort
qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort [a | a <- xs, a < x]
                      ++ [x] ++
               qsort [b | b <- xs, b >= x]
--main
main :: IO()
main  = do
    let lists = [13, 23, 22, 454]
    print $ msort lists
