module Main

where

multiples = [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

answer = sum multiples

main = print answer
