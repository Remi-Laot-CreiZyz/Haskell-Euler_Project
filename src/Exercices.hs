module Exercices where

-- Function to check if a number can divides another
--  Ex:
--  > divisibleBy 3 6 = True
--  > divisibleBy 5 3 = False
divisibleBy :: Int -> Int -> Bool
divisibleBy x y
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
