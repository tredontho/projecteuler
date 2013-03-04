module Main

where

allDivide :: Int -> [Int] -> Bool
allDivide x = all (\m -> x `mod` m == 0) 

answer = head $ filter (\x -> allDivide x [1..20]) [2520..]

main = print answer
