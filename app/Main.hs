import GetExtension (getExtension)

-- This program reads filenames from standard input,
-- extracts the extension for each filename,
-- and prints the extensions to standard output, one per line.
main :: IO ()
main = interact processLines
  where
    processLines :: String -> String
    processLines input = unlines (map getExtension (lines input))
