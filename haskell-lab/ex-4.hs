fibonacci :: Num a => Int -> a
fibonacci n = fibbs !! n
  where
  fibbs = 0:1: map f[2..]
  f n = fibbs !! (n-1) + fibbs !! (n-2)

main :: IO()
main = do
    putStrLn "Enter the no of terms:"
    n <- fmap read getLine 
    putStrLn "Fibonacci Series:"
    print $ map fibonacci[0..n-1]