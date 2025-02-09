module MUI.Core.Backdrop where

import Foreign (Foreign)
import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div)
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)

type BackdropProps componentProps =
  ( invisible :: Boolean
  , children :: Array JSX
  , classes :: BackdropClassKey
  , onClick :: EventHandler
  , open :: Boolean
  , transitionDuration :: { enter :: Number, exit :: Number }
  , ref :: Foreign
  , in :: Boolean
  , timeout :: Number
  , onEnter :: EventHandler
  , onEntering :: EventHandler
  , onEntered :: EventHandler
  , onExit :: EventHandler
  , onExiting :: EventHandler
  , onExited :: EventHandler
  , mountOnEnter :: Boolean
  , unmountOnExit :: Boolean
  , addEndListener :: EventHandler
  | componentProps
  )


foreign import data BackdropPropsPartial :: Type
foreign import data BackdropClassKey :: Type

type BackdropClassKeyOptions = 
  ( root :: String
  , invisible :: String
  )

backdropClassKey :: ∀ options options_
  .  Union options options_ BackdropClassKeyOptions
  => Record options
  -> BackdropClassKey
backdropClassKey = unsafeCoerce

backdropPropsPartial :: ∀ props props_
  .  Union props props_ (BackdropProps Props_div)
  => Record props 
  -> BackdropPropsPartial
backdropPropsPartial = unsafeCoerce


backdrop :: ∀ props props_
  .  Union props props_ (BackdropProps Props_div)
  => Record props 
  -> JSX
backdrop = element _Backdrop

foreign import _Backdrop :: ∀ a. ReactComponent a

