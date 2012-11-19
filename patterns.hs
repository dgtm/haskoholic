firstLetter :: String -> String
firstLetter [] = "No word is given"
firstLetter all@(x:xs) = "First letter of the word "++ all ++ " is" ++ [x]