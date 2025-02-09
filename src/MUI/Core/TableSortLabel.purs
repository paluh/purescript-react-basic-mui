module MUI.Core.TableSortLabel where

import Foreign (Foreign)
import MUI.Core.ButtonBase (ButtonBaseActions, TouchRippleProps)
import MUI.Core.ButtonBase as ButtonBase
import MUI.Core.SvgIcon (SvgIconProps)
import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_svg, Props_span)
import React.Basic.Events (EventHandler)
import React.Basic.Hooks (Ref)
import Unsafe.Coerce (unsafeCoerce)

type TableSortLabelProps componentProps =
  ( active :: Boolean
  , children :: Array JSX
  , classes :: TableSortLabelClassKey
  , direction :: DirectionProp
  , hideSortIcon :: Boolean
  , "IconComponent" :: ReactComponent { | (SvgIconProps Props_svg) }
  , action :: Ref ButtonBaseActions
  , buttonRef :: Ref Foreign
  , centerRipple :: Boolean
  , component :: ReactComponent { | componentProps }
  , disabled :: Boolean
  , disableRipple :: Boolean
  , disableTouchRipple :: Boolean
  , focusRipple :: Boolean
  , focusVisibleClassName :: String
  , onFocusVisible :: EventHandler
  , "TouchRippleProps" :: TouchRippleProps
  , type :: ButtonBase.ButtonBaseTypeProp
  | componentProps
  )

foreign import data DirectionProp :: Type
data Direction = Asc | Desc
direction :: Direction -> DirectionProp
direction Asc = unsafeCoerce "asc"
direction Desc = unsafeCoerce "desc"

foreign import data TableSortLabelClassKey :: Type
foreign import data TableSortLabelPropsPartial :: Type

type TableSortLabelClassKeyOptions =
  ( root :: String
  , active :: String
  , icon :: String
  , iconDirectionDesc :: String
  , iconDirectionAsc :: String
  )

tableSortLabelClassKey :: ∀ options options_
  .  Union options options_ TableSortLabelClassKeyOptions
  => Record options
  -> TableSortLabelClassKey
tableSortLabelClassKey = unsafeCoerce

tableSortLabelPropsPartial_component :: ∀ componentProps props props_
  .  Union props props_ (TableSortLabelProps componentProps)
  => Record props 
  -> TableSortLabelPropsPartial 
tableSortLabelPropsPartial_component = unsafeCoerce

tableSortLabelPropsPartial :: ∀ props props_
  .  Union props props_ (TableSortLabelProps Props_span)
  => Record props 
  -> TableSortLabelPropsPartial 
tableSortLabelPropsPartial = unsafeCoerce

tableSortLabel_component :: ∀ componentProps props props_
  .  Union props props_ (TableSortLabelProps componentProps)
  => Record props 
  -> JSX
tableSortLabel_component = element _TableSortLabel

tableSortLabel :: ∀ props props_
  .  Union props props_ (TableSortLabelProps Props_span)
  => Record props 
  -> JSX
tableSortLabel = element _TableSortLabel

foreign import  _TableSortLabel :: ∀ a. ReactComponent a