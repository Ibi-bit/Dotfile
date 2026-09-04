local source = debug.getinfo(1, "S").source
local configDir = source:match("^@(.*/)")

if configDir then
    package.path = configDir .. "?.lua;" .. configDir .. "?/init.lua;" .. package.path
end

local shared = require("shared")

require("monitors")
require("look_and_feel")
require("input")
require("rules")
require("startup")(shared)
require("keybindings")(shared)
