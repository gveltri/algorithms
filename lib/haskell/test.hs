factorial :: (Enum a, Num a) => a -> a
factorial n = product [n, n-1 .. 1]

permutations :: (Fractional a, Enum a, Num a, RealFrac a) => a -> a -> Integer
permutations n r = truncate (factorial n / (factorial (n-r)))

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]


