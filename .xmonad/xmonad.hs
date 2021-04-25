import XMonad
import XMonad.Config.Desktop
import qualified Data.Map as M

myModMask = mod1Mask

-- myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
  -- [ ((modMask, xK_q), kill) ]

main = do
  xmonad $ defaultConfig
    { terminal = "alacritty"
    , modMask = myModMask
    , borderWidth = 3
    -- , keys = myKeys
    }



