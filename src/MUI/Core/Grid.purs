module MUI.Core.Grid where

import MUI.Core.Grid.AlignContent (AlignContentProp)
import MUI.Core.Grid.AlignItems (AlignItemsProp)
import MUI.Core.Grid.Direction (DirectionProp)
import MUI.Core.Grid.GridCount (GridCountProp)
import MUI.Core.Grid.Justify (JustifyProp)
import MUI.Core.Grid.Spacing (SpacingProp)
import MUI.Core.Grid.Wrap (WrapProp)
import Prim.Row (class Union)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_div)
import Unsafe.Coerce (unsafeCoerce)

type GridProps componentProps =
  ( alignContent :: AlignContentProp
  , alignItems :: AlignItemsProp
  , children :: Array JSX
  , classes :: GridClassKey
  , component :: ReactComponent { | componentProps }
  , container :: Boolean
  , direction :: DirectionProp
  , item :: Boolean
  , justify :: JustifyProp
  , lg :: GridCountProp
  , md :: GridCountProp 
  , sm :: GridCountProp
  , spacing :: SpacingProp
  , wrap :: WrapProp
  , xl :: GridCountProp
  , xs :: GridCountProp
  , zeroMinWidth :: Boolean
  | componentProps
  )


foreign import data GridClassKey :: Type
foreign import data GridPropsPartial :: Type

type GridClassKeyOptions =
  ( container :: String
  , item :: String
  , "direction-xs-column" :: String
  , "direction-xs-column-reverse" :: String
  , "direction-xs-row-reverse" :: String
  , "wrap-xs-nowrap" :: String
  , "wrap-xs-wrap-reverse" :: String
  , "align-items-xs-center" :: String
  , "align-items-xs-flex-start" :: String
  , "align-items-xs-flex-end" :: String
  , "align-items-xs-baseline" :: String
  , "align-content-xs-center" :: String
  , "align-content-xs-flex-start" :: String
  , "align-content-xs-flex-end" :: String
  , "align-content-xs-space-between" :: String
  , "align-content-xs-space-around" :: String
  , "justify-xs-center" :: String
  , "justify-xs-flex-end" :: String
  , "justify-xs-space-between" :: String
  , "justify-xs-space-around" :: String
  , "spacing-xs-1" :: String
  , "spacing-xs-2" :: String
  , "spacing-xs-3" :: String
  , "spacing-xs-4" :: String
  , "spacing-xs-5" :: String
  , "spacing-xs-6" :: String
  , "spacing-xs-7" :: String
  , "spacing-xs-8" :: String
  , "spacing-xs-9" :: String
  , "spacing-xs-10" :: String
  , "grid-xs-auto" :: String
  , "grid-xs-true" :: String
  , "grid-xs-1" :: String
  , "grid-xs-2" :: String
  , "grid-xs-3" :: String
  , "grid-xs-4" :: String
  , "grid-xs-5" :: String
  , "grid-xs-6" :: String
  , "grid-xs-7" :: String
  , "grid-xs-8" :: String
  , "grid-xs-9" :: String
  , "grid-xs-10" :: String
  , "grid-xs-11" :: String
  , "grid-xs-12" :: String
  )

gridClassKey :: ∀ options options_
  . Union options options_ GridClassKeyOptions
  => Record options
  -> GridClassKey
gridClassKey = unsafeCoerce


gridPropsPartial_component :: ∀ componentProps props props_
  . Union props props_ (GridProps componentProps)
  => Record props 
  -> GridPropsPartial 
gridPropsPartial_component = unsafeCoerce

gridPropsPartial :: ∀ props props_
  . Union props props_ (GridProps Props_div)
  => Record props 
  -> GridPropsPartial 
gridPropsPartial = unsafeCoerce

grid_component :: ∀ componentProps props props_
  . Union props props_ (GridProps componentProps)
  => Record props 
  -> JSX
grid_component = element _Grid

grid :: ∀ props props_
  . Union props props_ (GridProps Props_div)
  => Record props 
  -> JSX
grid = element _Grid


foreign import _Grid :: ∀ a. ReactComponent a
