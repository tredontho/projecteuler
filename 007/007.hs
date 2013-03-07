module Main

where

-- |This is just checking up until the sqrt of the number since
--  we're only going to be using this for the prime check
divisors :: Integer -> [Integer]
divisors n = [x | x <- [2..floor . sqrt . fromIntegral $ n], n `mod` x == 0]

isPrime :: Integer -> Bool
isPrime x = case divisors x of
                [] -> True
                _  -> False

primes :: [Integer]
primes = filter isPrime [2..]

answer = head . drop 10000 $ primes


main = print answer
