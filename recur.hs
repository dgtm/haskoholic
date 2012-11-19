maxy::(Ord b) => [b] -> b
maxy [] = error "Empty Max"
maxy (x:[]) = x
maxy (x:xs)
		|x > (maxy xs) = x
		|otherwise = maxy xs

replica::(Eq a, Num a) => a -> a -> [a]
replica x 0 = []
replica x y = x:(replica x (y-1))
-- Extend this to negative numbes
replican::(Ord a, Num a) => a -> a -> [a]
replican x n
		| n <= 0 = []
		| otherwise = x:replica x (n-1)
