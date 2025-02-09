module MUI.Core.Drawer where

import MUI.Core.Modal (ModalPropsPartial)
import MUI.Core.Paper (PaperPropsPartial)
import MUI.Core.Slide (SlidePropsPartial)
import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div)
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)

type DrawerProps componentProps =
  ( anchor :: AnchorProp
  , children :: Array JSX
  , classes :: DrawerClassKey
  , elevation :: Number
  , "ModalProps" :: ModalPropsPartial
  , onClose :: EventHandler
  , open :: Boolean
  , "PaperProps" :: PaperPropsPartial
  , "SlideProps" :: SlidePropsPartial
  , transitionDuration :: { enter :: Number, exit :: Number }
  , variant :: VariantProp
  | componentProps
  )

foreign import data AnchorProp :: Type
data Anchor = Left | Top | Right | Bottom 

anchor :: Anchor -> AnchorProp
anchor Left = unsafeCoerce "left"
anchor Top = unsafeCoerce "top"
anchor Right = unsafeCoerce "right"
anchor Bottom = unsafeCoerce "bottom"

foreign import data VariantProp :: Type
data Variant = Permanent | Persistent | Temporary

variant :: Variant -> VariantProp
variant Permanent = unsafeCoerce "permanent"
variant Persistent = unsafeCoerce "persistent"
variant Temporary = unsafeCoerce "temporary"


foreign import data DrawerClassKey :: Type
foreign import data DrawerPropsPartial :: Type

type DrawerClassKeyOptions =
  ( root :: String
  , docked :: String
  , paper :: String
  , paperAnchorLeft :: String
  , paperAnchorRight :: String
  , paperAnchorTop :: String
  , paperAnchorBottom :: String
  , paperAnchorDockedLeft :: String
  , paperAnchorDockedTop :: String
  , paperAnchorDockedRight :: String
  , paperAnchorDockedBottom :: String
  , modal :: String
  )

drawerClassKey 
  :: ∀ options options_
  . Union options options_ DrawerClassKeyOptions
  => Record options
  -> DrawerClassKey
drawerClassKey = unsafeCoerce

drawerPropsPartial_component :: ∀ componentProps props props_
  . Union props props_ (DrawerProps componentProps)
  => Record props 
  -> DrawerPropsPartial 
drawerPropsPartial_component = unsafeCoerce

drawerPropsPartial
  :: ∀ props props_
  . Union props props_ (DrawerProps Props_div)
  => Record props 
  -> DrawerPropsPartial 
drawerPropsPartial = unsafeCoerce

drawer_component :: ∀ componentProps props props_
  . Union props props_ (DrawerProps componentProps)
  => Record props 
  -> JSX
drawer_component = element _Drawer

drawer :: ∀ props props_
  . Union props props_ (DrawerProps Props_div)
  => Record props 
  -> JSX
drawer = element _Drawer


foreign import _Drawer :: ∀ a. ReactComponent a