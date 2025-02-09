module MUI.Core.Paper where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div)
import Unsafe.Coerce (unsafeCoerce)

type PaperProps componentProps =
  ( children :: Array JSX
  , classes :: PaperClassKey
  , component :: ReactComponent { | componentProps }
  , elevation :: Number
  , square :: Boolean
  | componentProps
  )

foreign import data PaperClassKey :: Type
foreign import data PaperPropsPartial :: Type

type PaperClassKeyOptions =
  ( root :: String
  , rounded :: String
  , elevation0 :: String
  , elevation1 :: String
  , elevation2 :: String
  , elevation3 :: String
  , elevation4 :: String
  , elevation5 :: String
  , elevation6 :: String
  , elevation7 :: String
  , elevation8 :: String
  , elevation9 :: String
  , elevation10 :: String
  , elevation11 :: String
  , elevation12 :: String
  , elevation13 :: String
  , elevation14 :: String
  , elevation15 :: String
  , elevation16 :: String
  , elevation17 :: String
  , elevation18 :: String
  , elevation19 :: String
  , elevation20 :: String
  , elevation21 :: String
  , elevation22 :: String
  , elevation23 :: String
  , elevation24 :: String
  )

paperClassKey :: ∀ options options_
  . Union options options_ PaperClassKeyOptions
  => Record options
  -> PaperClassKey
paperClassKey = unsafeCoerce

paperPropsPartial_component :: ∀ componentProps props props_
  . Union props props_ (PaperProps componentProps)
  => Record props 
  -> PaperPropsPartial
paperPropsPartial_component = unsafeCoerce

paperPropsPartial :: ∀ props props_
  . Union props props_ (PaperProps Props_div)
  => Record props 
  -> PaperPropsPartial
paperPropsPartial = unsafeCoerce

paper_component :: ∀ componentProps props props_
  . Union props props_ (PaperProps componentProps)
  => Record props 
  -> JSX
paper_component = element _Paper

paper :: ∀ props props_
  . Union props props_ (PaperProps Props_div)
  => Record props 
  -> JSX
paper = element _Paper


foreign import _Paper :: ∀ a. ReactComponent a