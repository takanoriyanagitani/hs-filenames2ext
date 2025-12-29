module Main where

import GetExtension (getExtension)
import System.Exit (exitFailure, exitSuccess)
import Test.HUnit

-- Define the test cases for the getExtension function
tests :: Test
tests =
    TestList
        [ "test with standard extension" ~: "png" ~=? getExtension "image.png"
        , "test with multiple dots" ~: "gz" ~=? getExtension "archive.tar.gz"
        , "test with no extension" ~: "" ~=? getExtension "filename"
        , "test with trailing dot" ~: "" ~=? getExtension "file.name."
        , "test with dotfile" ~: "bashrc" ~=? getExtension ".bashrc"
        , "test with empty string" ~: "" ~=? getExtension ""
        , "test with path" ~: "txt" ~=? getExtension "dir/file.txt"
        , "test with nested path" ~: "zip" ~=? getExtension "dir/subdir/archive.zip"
        ]

main :: IO ()
main = do
    counts <- runTestTT tests
    if failures counts > 0 || errors counts > 0
        then exitFailure
        else exitSuccess
