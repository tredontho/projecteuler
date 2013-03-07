module Main

where

import Control.Monad (guard)
import Data.List (nub)

-- |Just the divisors of an integer, not including itself or 1 for our purposes
divisors :: Integer -> [Integer]
divisors k = nub $ (fst lists) ++ (snd lists)
    where 
        lists = unzip divs
        divs = 
            do
                m <- [2..floor.sqrt $ fromIntegral k]
                guard $ k `mod` m == 0
                return (m,k `div` m)

isPrime :: Integer -> Bool
isPrime 2 = True
isPrime x = divisors x == []

primeFactors :: Integer -> [Integer]
primeFactors x = filter isPrime $ divisors x

answer = maximum $ primeFactors 600851475143

main = print answer
