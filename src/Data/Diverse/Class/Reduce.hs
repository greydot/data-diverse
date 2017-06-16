{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE MultiParamTypeClasses #-}

module Data.Diverse.Class.Reduce where

import Data.Kind

-- | Reduce a polymorphic variant @v xs@ into @r@ using handlers.
class Reduce v handler (xs :: [Type]) r where
    reduce :: handler xs r -> v xs -> r