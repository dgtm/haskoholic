cole :: (Integral a) => a -> [a]
cole 1 = [1]
cole n
	| even(n) = n : cole(n `div` 2)
	| otherwise = n : cole(n*3 + 1)

lencole :: Int
lencole = length(filter p [1,2..100]) 
	where p x = length(cole x) > 15

numLongChains :: Int  
numLongChains = length (filter (\xs -> length(xs) > 15) (map cole [1..100]))  
    --where isLong xs = length xs > 15 
summer :: (Num a) => [a] -> a
summer xs = foldl (\a b -> a + b) 0 xs

advancedsummer :: (Num a) => [a] -> a
advancedsummer = foldl (+) 0

avg :: (Integral a) => [a] -> a
avg xs = summer(xs) `div` fromIntegral(length(xs))

-- Elem with Left Fold
elfold :: (Integral a) => a -> [a] -> Bool
elfold v = foldl (\acc y -> acc || (y==v)) False

-- Map with Right Fold
marfold :: (Integral a)=> (a -> a) -> [a] -> [a]
marfold f = foldr (\y acc -> f(y) : acc) []

-- Function Application
nlci :: Int
nlci = length $ filter (\xs -> length(xs) > 15) $ map cole [1..100]

-- Turn to Negative
neg :: (Num a) => [a] -> [a]
--neg = map(\x -> -x)
neg = map(\x -> negate abs(x))

-- Neg with composition
negc :: (Num a) => [a] -> [a]
negc = map(negate . abs)