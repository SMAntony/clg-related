reverse' :: [a] -> [a]
reverse' x = [x !! i | i <- [length x-1, length x-2 .. 0]]

createListManually :: IO()
createListManually = do
    putStrLn "Enter the elements of the list:"
    input <- getLine 
    let list = read $ "["++input++"]" :: [Int]
    putStrLn "The Entered List:"
    print list
    putStrLn "The Reversed List:"
    print $ reverse' list

createListUsingRange :: IO()
createListUsingRange = do
    putStrLn "Enter Start, Step, End:"
    input <- getLine 
    let start:step:end:xs = read $ "["++input++"]" :: [Int]
    let list = [start, start + step .. end]
    putStrLn "The list created using range:"
    print list
    putStrLn "The reversed list:"
    print $ reverse' list

main :: IO()
main = do
    createListManually
    createListUsingRange