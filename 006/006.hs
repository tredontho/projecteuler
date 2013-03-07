module Main

where

square = \x -> x*x

sumOfSquares = sum .  map square

squareOfSums = square . sum

diff n = squareOfSums [1..n] - sumOfSquares [1..n]

answer = diff 100

main = print answer
