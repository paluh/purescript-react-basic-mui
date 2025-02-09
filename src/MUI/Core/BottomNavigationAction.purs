module MUI.Core.BottomNavigationAction where

import Foreign (Foreign)
import MUI.Core.ButtonBase (ButtonBaseActions, ButtonBaseTypeProp, TouchRippleProps)
import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_button)
import React.Basic.Events (EventHandler)
import React.Basic.Hooks (Ref)
import Unsafe.Coerce (unsafeCoerce)

type BottomNavigationActionProps value componentProps =
  ( action :: Ref ButtonBaseActions
  , buttonRef :: Ref Foreign
  , centerRipple :: Boolean
  , classes :: BottomNavigationActionClassKey
  , component :: ReactComponent { | componentProps } 
  , disabled :: Boolean
  , disableRipple :: Boolean
  , disableTouchRipple :: Boolean
  , focusRipple :: Boolean
  , focusVisibleClassName :: String
  , icon :: JSX
  , label :: JSX
  , onFocusVisible :: EventHandler
  , "TouchRippleProps" :: TouchRippleProps
  , showLabel :: Boolean
  , type :: ButtonBaseTypeProp
  , value :: value
  | componentProps
  )

foreign import data BottomNavigationActionPropsPartial :: Type

type BottomNavigationActionClassKeyOptions = 
  ( root :: String
  , selected :: String
  , iconOnly :: String
  , wrapper :: String
  , label :: String
  )

foreign import data BottomNavigationActionClassKey :: Type


bottomNavigationActionClassKey :: ∀ options options_
  . Union options options_ BottomNavigationActionClassKeyOptions
  => Record options
  -> BottomNavigationActionClassKey
bottomNavigationActionClassKey = unsafeCoerce

bottomNavigationActionPropsPartial_component :: ∀ value componentProps props props_
  . Union props props_ (BottomNavigationActionProps value componentProps)
  => Record props 
  -> BottomNavigationActionPropsPartial
bottomNavigationActionPropsPartial_component = unsafeCoerce

bottomNavigationActionPropsPartial :: ∀ value props props_
  . Union props props_ (BottomNavigationActionProps value Props_button)
  => Record props 
  -> BottomNavigationActionPropsPartial
bottomNavigationActionPropsPartial = unsafeCoerce

bottomNavigationAction_component :: ∀ value componentProps props props_
  . Union props props_ (BottomNavigationActionProps value componentProps)
  => Record props 
  -> JSX
bottomNavigationAction_component = element _BottomNavigationAction

bottomNavigationAction :: ∀ value props props_
  . Union props props_ (BottomNavigationActionProps value Props_button)
  => Record props 
  -> JSX
bottomNavigationAction = element _BottomNavigationAction


foreign import _BottomNavigationAction :: ∀ a. ReactComponent a