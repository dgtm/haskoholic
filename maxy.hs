maxy :: (Ord a) => [a] -> a
maxy [] = error "Empty List"
maxy [x] = x
maxy (x:xs) = max x (maxy(xs))