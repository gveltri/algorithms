factorial n = product [n, n-1 .. 1]

permutations n r = factorial n / (factorial (n-r))
