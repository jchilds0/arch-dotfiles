local awful = require("awful")

-- process
--  1. move mouse to screen 
--  2. focus target tag 
--  3. spawn app
--  repeat

awful.spawn.with_shell("xdotool mousemove 5000 0")

awful.spawn("discord", { screen = 2, tag = "1" })
awful.spawn("spotify", { screen = 2, tag = "1" })

awful.spawn("xairedit", { screen = 2, tag = "2" })
awful.spawn("pavucontrol", { screen = 2, tag = "3" })

--awful.spawn.with_shell("xdotool mousemove 0 0")
