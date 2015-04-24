module Exercices where

-- EXERCICE 1

-- Function to check if a number can divides another
--  Ex:
--  > isDivisorOf 3 6 = True
--  > isDivisorOf 5 3 = False
isDivisorOf :: Int -> Int -> Bool
isDivisorOf x y
    | y `mod` x == 0 = True
    | otherwise = False

-- Function to applicate multiple check on a variable
--  Ex:
--  > multipleCheck (||) [(<5), (>10)] 8 = True
--  > multipleCheck (||) [(>5), (<10)] 8 = False
--  > multipleCheck (&&) [(>5), (<10)] 8 = True
multipleCheck :: (Bool -> Bool -> Bool) -> [(a0 -> Bool)] -> a0 -> Bool
multipleCheck o fs x
    | length fs == 1 = head fs x
    | otherwise = o (head fs x) (multipleCheck o (tail fs) x)

-- EXERCICE 2

-- Fibonacci recursive function
slow_fibo :: Int -> Int
slow_fibo n
    | n < 2 = 1
    | otherwise = slow_fibo (n-1) + slow_fibo (n-2)

-- Fibonacci generator
--  Uses the mnemonic property of zipWith
--  Gives it the complexity O(N²)
fibonacciSequence :: [Int]
fibonacciSequence = 1 : 1 : zipWith (+) fibonacciSequence (tail fibonacciSequence)
