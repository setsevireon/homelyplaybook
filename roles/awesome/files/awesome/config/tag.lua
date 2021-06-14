local awful = require("awful")
awful.rules = require("awful.rules")
local tyrannical = require("tyrannical")

tyrannical.tags = {
	{
		name = "term",
		init = init,
		selected = true,
		exclusive = true,
		screen = 2,
		layout = awful.layout.suit.tile.bottom,
		class = {"xterm", "XTerm", "terminator", "Alacritty"}
	},
	{
		name = "web",
		init = init,
		selected = true,
		exclusive = true,
		screen = 1,
		layout = awful.layout.suit.max,
		class = {"Firefox", "Firefox-esr"}
	},
	{
		name = "doc",
		init = false,
		exclusive = true,
		volatile = true,
		screen = 1,
		layout = awful.layout.suit.max,
		class = {"Evince"}
	},
}

-- Ignore the tag "exclusive" property for the following clients
-- (matched by classes)
--tyrannical.properties.intrusive = {}

-- Ignore the tiled layout for the matching clients
tyrannical.properties.floating = {"eog", "feh", "Xephyr"}

-- Make the matching clients (by classes) on top of the default layout
--tyrannical.properties.ontop = {}

tyrannical.settings.block_children_focus_stealing = true
tyrannical.settings.group_children = true
