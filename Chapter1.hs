import Data.List (sortBy)
import Data.Ord (comparing)

-- HC1T1 - Task 1: Function Composition
double :: Int -> Int
double x = x * 2

increment :: Int -> Int
increment x = x + 1

doubleThenIncrement :: Int -> Int
doubleThenIncrement = increment . double

-- HC1T2 - Task 2: Pure Function Example
circleArea :: Floating a => a -> a
circleArea r = pi * r ^ 2

-- HC1T3 - Task 3: Checking if a Number is Greater than 18
greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

-- HC1T4 - Task 4: Composing a Function to Process Player Data
extractPlayers :: [(String, Int)] -> [String]
extractPlayers players = map fst players

sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore = sortBy (flip (comparing snd))

topThree :: [(String, Int)] -> [(String, Int)]
topThree = take 3

getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

-- HC1T5 - Task 5: Laziness in Haskell
infiniteNumbers :: [Int]
infiniteNumbers = [1..]

firstN :: Int -> [Int]
firstN n = take n infiniteNumbers

-- HC1T6 - Task 6: Using Type Signatures
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

-- HC1T7 - Task 7: Converting Fahrenheit to Celsius
fToC :: Floating a => a -> a
fToC f = (f - 32) * 5 / 9

-- HC1T8 - Task 8: Higher-Order Functions
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Main function to demonstrate all tasks
main :: IO ()
main = do
    -- Task 1
    putStrLn "HC1T1 - doubleThenIncrement 5:"
    print (doubleThenIncrement 5)  -- Output: 11

    -- Task 2
    putStrLn "\nHC1T2 - circleArea 3:"
    print (circleArea 3)  -- Output: ~28.27

    -- Task 3
    putStrLn "\nHC1T3 - greaterThan18 20:"
    print (greaterThan18 20)  -- Output: True

    -- Task 4
    let players = [("Alice", 50), ("Bob", 90), ("Carol", 70), ("Dave", 80)]
    putStrLn "\nHC1T4 - getTopThreePlayers:"
    print (getTopThreePlayers players)  -- Output: ["Bob", "Dave", "Carol"]

    -- Task 5
    putStrLn "\nHC1T5 - first 5 infinite numbers:"
    print (firstN 5)  -- Output: [1,2,3,4,5]

    -- Task 6
    putStrLn "\nHC1T6 - addNumbers 4 7:"
    print (addNumbers 4 7)  -- Output: 11

    -- Task 7
    putStrLn "\nHC1T7 - fToC 212:"
    print (fToC 212)  -- Output: 100.0

    -- Task 8
    putStrLn "\nHC1T8 - applyTwice (+1) 3:"
    print (applyTwice (+1) 3)  -- Output: 5
