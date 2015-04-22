module Timer where

import System.CPUTime
import Text.Printf

time :: IO a -> IO ()
time ioExpression = do
    t_start <- getCPUTime
    value <- ioExpression
    t_end <- getCPUTime
    let diff = (fromIntegral (t_end - t_start)) / (10^12)
    _ <- return value
    printf ". (Execution time: %0.5fsec)\n"(diff::Double)