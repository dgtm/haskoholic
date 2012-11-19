multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z
-- Partial Application
compHundred :: (Num a, Ord a) => a -> Ordering
compHundred = compare 100

-- Partial Application of Infix Functions
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

adder :: (Num a) => a -> a
adder = (+1)

-- Elem
element :: Char -> Bool
element = (`elem` ['A'..'Z'])
