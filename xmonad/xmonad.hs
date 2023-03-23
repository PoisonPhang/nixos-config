import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

myConfig = def 
  {
    modMask = mod4Mask,
    terminal = "kitty"
  }
  `additionalKeysP`
  [
    ("M-p", spawn "rofi -show drun")
  ]

main :: IO ()
main = xmonad $ ewmhFullscreen $ ewmh $ xmobarProp $ myConfig
