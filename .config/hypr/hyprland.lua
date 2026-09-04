local source = debug.getinfo(1, "S").source
local configDir = source:match("^@(.*/)")

if configDir then
    package.path = configDir .. "?.lua;" .. configDir .. "?/init.lua;" .. package.path
end

local shared = require("hyprland.shared")

require("hyprland.monitors")
require("hyprland.look_and_feel")
require("hyprland.input")
require("hyprland.rules")
require("hyprland.startup")(shared)
require("hyprland.keybindings")(shared)
