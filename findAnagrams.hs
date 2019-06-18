module Main where
import Data.List
import Data.Char
import System.Environment

main = do
 ana <- getArgs
 doc <- readFile (head ana)
 putStr "The anagrams of "
 putStr (last ana)
 putStr " are "
 print (anagrams(lines doc) (last ana))

isAnagram xs xs2 = sort( map toLower (xs)) == sort( map toLower (xs2))

anagrams dict word = filter (isAnagram word) dict
