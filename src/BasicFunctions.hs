module BasicFunctions where

{- Function f -}
f x = x + 10

{- Function g -}
g x = x * x

doubleSmallNumber :: Integer -> Integer
doubleSmallNumber x = if x > 100 then x else x*2

addBrackets s = "[" ++ s ++ "]"

main :: IO ()
main = do
    {- Mapping example: add 10 to each item in list and print -}
    print "Add 10 to each item in list and print"
    print $ map (+ 10) [1, 2, 3]

    {- Folding example: sum all elements in list, start with 0, and print -}
    print "Sum all elements in list, start with 0, and print"
    print $ foldr (+) 0 [1, 2, 3]

    {- Filtering example: filter numbers that are greater than 3 from a list -}
    print "Filter numbers that are > 3 from a list"
    print $ filter (> 3) [1,2,3,4,5,6]

    print "For each item 'x' in list, exec function f and then function g, i.e. g(f(x)), then print"
    print $ map (g . f) [1,2,3]

    print "For each item, add brackets"
    print $ map addBrackets ["one", "two", "three"]

    print "Double a small number"
    print (doubleSmallNumber 55)