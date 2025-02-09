module MUI.Core.ListItemIcon where

import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div)
import Unsafe.Coerce (unsafeCoerce)

type ListItemIconProps containerProps =
  ( children :: Array JSX
  , classes :: ListItemIconClassKey
  | containerProps
  )

foreign import data ListItemIconClassKey :: Type
foreign import data ListItemIconPropsPartial :: Type

type ListItemIconClassKeyOptions =
  ( root :: String
  , alignItemsFlexStart :: String
  )

listItemIconClassKey :: ∀ options options_
  . Union options options_ ListItemIconClassKeyOptions
  => Record options
  -> ListItemIconClassKey
listItemIconClassKey = unsafeCoerce

listItemIconPropsPartial :: ∀ props props_
  . Union props props_ (ListItemIconProps Props_div)
  => Record props 
  -> ListItemIconPropsPartial 
listItemIconPropsPartial = unsafeCoerce

listItemIcon :: ∀ props props_
  . Union props props_ (ListItemIconProps Props_div)
  => Record props 
  -> JSX
listItemIcon = element _ListItemIcon


foreign import _ListItemIcon :: ∀ a. ReactComponent a