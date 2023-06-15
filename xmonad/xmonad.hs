import XMonad

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

import XMonad.Util.EZConfig
import XMonad.Util.Loggers
import XMonad.Util.Ungrab

import XMonad.Layout.Magnifier
import XMonad.Layout.ThreeColumns

import XMonad.Hooks.EwmhDesktops

myConfig = def 
  {
    modMask = mod4Mask,
    terminal = "kitty"
  }
  `additionalKeysP`
  [
    ("M-p", spawn "rofi -show drun"),
    ("M-x", spawn "rofi -show power-menu -modi power-menu:rofi-power-menu"),
    ("M-s", spawn "flameshot gui")
  ]

myXmobarPP :: PP
myXmobarPP = def
    { ppSep             = magenta " • "
    , ppTitleSanitize   = xmobarStrip
    , ppCurrent         = wrap " " "" . xmobarBorder "Top" "#f5e0dc" 2
    , ppHidden          = white . wrap " " ""
    , ppHiddenNoWindows = lowWhite . wrap " " ""
    , ppUrgent          = red . wrap (yellow "!") (yellow "!")
    , ppOrder           = \[ws, l, _, wins] -> [ws, l, wins]
    , ppExtras          = [logTitles formatFocused formatUnfocused]
    }
  where
    formatFocused   = wrap (white    "[") (white    "]") . magenta . ppWindow
    formatUnfocused = wrap (lowWhite "[") (lowWhite "]") . blue    . ppWindow

    -- | Windows should have *some* title, which should not not exceed a
    -- sane length.
    ppWindow :: String -> String
    ppWindow = xmobarRaw . (\w -> if null w then "untitled" else w) . shorten 32

    blue, lowWhite, magenta, red, white, yellow :: String -> String
    magenta  = xmobarColor "#cba6f7" ""
    blue     = xmobarColor "#89b4fa" ""
    white    = xmobarColor "#cdd6f4" ""
    yellow   = xmobarColor "#f9e2af" ""
    red      = xmobarColor "#f38ba8" ""
    lowWhite = xmobarColor "#bac2de" ""

main :: IO ()
main = xmonad 
     . ewmhFullscreen 
     . ewmh 
     . withEasySB (statusBarProp "xmobar" (pure myXmobarPP)) defToggleStrutsKey
     $ myConfig
