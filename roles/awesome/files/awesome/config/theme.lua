local beautiful = require("beautiful")
local gears = require("gears")
beautiful.init(gears.filesystem.get_configuration_dir() .. "themes/custom/theme.lua")