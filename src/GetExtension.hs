{-# LANGUAGE Safe #-}

module GetExtension (getExtension) where

import System.FilePath (takeExtension)

{- | Extracts the file extension from a given filename string.
  This is a wrapper around 'System.FilePath.takeExtension' that also removes the leading dot.
-}
getExtension :: String -> String
getExtension = drop 1 . takeExtension
