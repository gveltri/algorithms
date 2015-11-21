factorial :: (Enum a, Num a) => a -> a
factorial n = product [n, n-1 .. 1]

permutations :: (Fractional a, Enum a, Num a, RealFrac a) => a -> a -> Integer
permutations n r = truncate (factorial n / (factorial (n-r)))

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum'(xs)

fibonacci :: (Integral a) => a -> a
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)

fiblist :: (Integral a) => a -> [a]
fiblist 0 = [1]
fiblist 1 = [1,1]
fiblist x = map fibonacci [1..x]

-- cipher :: [Char] -> Int -> [Char]
-- cipher [] _ = []
-- cipher (x:xs) n = (encode x n) : (cipher xs n)

-- encode :: Char -> Int -> Char
-- encode x n = let alph = ['a'.. 'z'] ++ ['A' .. 'Z']
--                  index =

indexOf :: (Eq a) => [a] -> a -> Int
indexOf [] _ = 1
indexOf (x:xs) target  
    |x == target = 1 + (indexOf xs) target
    |otherwise = 0
                                                
                                          
