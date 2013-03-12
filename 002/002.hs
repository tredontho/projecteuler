module Main

where

fib :: [Int]
fib = 1 : 2 : zipWith (+) fib (tail fib)

evenFibs :: [Int]
evenFibs = filter (\(p) -> p `mod` 2 == 0) fib

answer :: Int
answer = sum $ takeWhile (<= 4000000) evenFibs

main = print answer
