-- | Main entry point to the application.
module Main where

-- PUBLIC LIBRARIES
import           Data.Typeable
-- PERSONNAL SOURCE CODE
import           Timer
import           Exercices

-- | The main entry point.
main :: IO ()
main = do
    -- EXERCICE 1:
    -- Find the sum of all the multiples of 3 or 5 below 1000
    putStrLn "- Beginning of Exercice1 Runtime"
    putStrLn "..."
    putStrLn (". Is 5 divisible by 3? " ++                                                                  show (divisibleBy 3 5)                                                                      )
    putStrLn (". type of 'divisibleBy 5': " ++                                                              show (typeOf (divisibleBy 5))                                                               )
    putStrLn (". are [1,50,25,3,33,15] multiples of 5? " ++                                                 show (map (divisibleBy 5) [1,50,25,3,33,15])                                                )
    putStrLn (". which number in [1,50,25,3,33,15] is a multiple of 5? " ++                                 show (filter (divisibleBy 5) [1,50,25,3,33,15])                                             )
    putStrLn (". the sum of the numbers in [1,50,25,3,33,15] that are multiples of 5 is " ++                show (sum (filter (divisibleBy 5) [1,50,25,3,33,15]))                                       )
    putStrLn (". type of '||': " ++                                                                         show (typeOf (||))                                                                          )
    putStrLn (". is 8 > 5 and 8 < 10? " ++                                                                  show (multipleCheck (&&) [(>5), (<10)] 8)                                                   )
    putStrLn (". is 8 < 5 or 8 > 10? " ++                                                                   show (multipleCheck (||) [(<5), (>10)] 8)                                                   )
    putStrLn (". which number in [1,50,25,3,33,15] is a multiple of 5 or 3?" ++                             show (filter (multipleCheck (||) [divisibleBy 3, divisibleBy 5]) [1,50,25,3,33,15])         )
    putStrLn (". the sum of the numbers in [1,50,25,3,33,15] that are multiples of 5 or 3 is " ++           show (sum (filter (multipleCheck (||) [divisibleBy 3, divisibleBy 5]) [1,50,25,3,33,15]))   )
    time $ putStrLn (". the sum of the numbers in range [0..1000] that are multiples of 5 or 3 is " ++      show (sum (filter (multipleCheck (||) [divisibleBy 3, divisibleBy 5]) [0..1000]))           )
    time $ putStrLn (". the sum of the numbers in range [0..500000] that are multiples of 5 or 3 is " ++    show (sum (filter (multipleCheck (||) [divisibleBy 3, divisibleBy 5]) [0..500000]))         )
    putStrLn "..."
    putStrLn "- End of Exercice1 Runtime"