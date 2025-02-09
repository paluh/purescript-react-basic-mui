module MUI.Core.CardMedia where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div)
import Unsafe.Coerce (unsafeCoerce)

type CardMediaProps componentProps =
  ( classes :: CardMediaClassKey
  , component :: ReactComponent { | componentProps }
  , image :: String
  , src :: String
  | componentProps
  )

foreign import data CardMediaClassKey :: Type
foreign import data CardMediaPropsPartial :: Type

type CardMediaClassKeyOptions =
  ( root :: String
  , media :: String
  )

cardMediaClassKey :: ∀ options options_
  . Union options options_ CardMediaClassKeyOptions
  => Record options
  -> CardMediaClassKey
cardMediaClassKey = unsafeCoerce

cardMediaPropsPartial_component :: ∀ componentProps props props_
  . Union props props_ (CardMediaProps componentProps)
  => Record props 
  -> CardMediaPropsPartial
cardMediaPropsPartial_component = unsafeCoerce

cardMediaPropsPartial :: ∀ props props_
  . Union props props_ (CardMediaProps Props_div)
  => Record props 
  -> CardMediaPropsPartial
cardMediaPropsPartial = unsafeCoerce

cardMedia_component :: ∀ componentProps props props_
  . Union props props_ (CardMediaProps componentProps)
  => Record props 
  -> JSX
cardMedia_component = element _CardMedia

cardMedia :: ∀ props props_
  . Union props props_ (CardMediaProps Props_div)
  => Record props 
  -> JSX
cardMedia = element _CardMedia


foreign import _CardMedia :: ∀ a. ReactComponent a