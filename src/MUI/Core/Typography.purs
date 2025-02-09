module MUI.Core.Typography where

import Prim.Row (class Union)
import MUI.Core.Typography.Align (AlignProp)
import MUI.Core.Typography.Color (ColorProp)
import MUI.Core.Typography.Display (DisplayProp)
import MUI.Core.Typography.Variant (VariantProp)
import React.Basic (JSX, ReactComponent, element)
import React.Basic.DOM (Props_h1)
import Unsafe.Coerce (unsafeCoerce)

type TypographyProps componentProps =
  ( align :: AlignProp
  , children :: Array JSX
  , classes :: TypographyClassKey
  , color :: ColorProp
  , component :: ReactComponent { | componentProps }
  , display :: DisplayProp
  , gutterBottom :: Boolean
  , noWrap :: Boolean
  , paragraph :: Boolean
  , variant :: VariantProp
  , variantMapping :: VariantMapping
  | componentProps
  )



foreign import data TypographyClassKey :: Type
foreign import data TypographyPropsPartial :: Type

type TypographyClassKeyOptions =
  ( root :: String
  , h1 :: String
  , h2 :: String
  , h3 :: String
  , h4 :: String
  , h5 :: String
  , h6 :: String
  , subtitle1 :: String
  , subtitle2 :: String
  , body1 :: String
  , body2 :: String
  , caption :: String
  , button :: String
  , overline :: String
  , srOnly :: String
  , alignLeft :: String
  , alignCenter :: String
  , alignRight :: String
  , alignJustify :: String
  , noWrap :: String
  , gutterBottom :: String
  , paragraph :: String
  , colorInherit :: String
  , colorSecondary :: String
  , colorTextSecondary :: String
  , colorError :: String
  , displayInline :: String
  , displayBlock' :: String
  )

type VariantMapping =
  { h1 :: String
  , h2 :: String
  , h3 :: String
  , h4 :: String
  , h5 :: String
  , h6 :: String
  , subtitle1 :: String
  , subtitle2 :: String
  , body1 :: String
  , body2 :: String
  }

variantMapping :: VariantMapping
variantMapping = 
  { h1: "h1"
  , h2: "h2"
  , h3: "h3"
  , h4: "h4"
  , h5: "h5"
  , h6: "h6"
  , subtitle1: "h6"
  , subtitle2: "h6"
  , body1: "p"
  , body2: "p"
  }

typographyClassKey :: ∀ options options_
  . Union options options_ TypographyClassKeyOptions
  => Record options
  -> TypographyClassKey
typographyClassKey = unsafeCoerce

typographyPropsPartial_component :: ∀ componentProps props props_
  . Union props props_ (TypographyProps componentProps)
  => Record props 
  -> TypographyPropsPartial 
typographyPropsPartial_component = unsafeCoerce

typographyPropsPartial :: ∀ props props_
  . Union props props_ (TypographyProps (Props_h1))
  => Record props 
  -> TypographyPropsPartial 
typographyPropsPartial = unsafeCoerce

typography_component :: ∀ componentProps props props_
  . Union props props_ (TypographyProps componentProps)
  => Record props 
  -> JSX
typography_component = element _Typography

typography :: ∀ props props_
  . Union props props_ (TypographyProps (Props_h1))
  => Record props 
  -> JSX
typography = element _Typography

foreign import _Typography :: ∀ a. ReactComponent a
