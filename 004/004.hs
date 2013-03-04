module Main

where

import Control.Monad

isPalindrome :: Int -> Bool
isPalindrome x = str == reverse str
    where str = show x

paliProds :: [Int]
paliProds = do
                let lst = [100..999]
                x <- lst
                y <- lst
                let prod = x * y
                guard . isPalindrome $ prod
                return prod

answer = maximum paliProds

main = print answer
