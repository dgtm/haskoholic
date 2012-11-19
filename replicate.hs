--replicate 3 5 returns [5,5,5]

replica :: Int -> Int -> [Int]
replica _ 0 = []
replica x 1 = [x]
replica x y = x : replica x (y-1)

replicate' :: (Num i, Ord i) => i -> a -> [a]  
replicate' n x  
    | n <= 0    = []  
    | otherwise = x:replicate' (n-1) x
