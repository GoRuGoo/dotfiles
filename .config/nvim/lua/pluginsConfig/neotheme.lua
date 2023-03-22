local status, n = pcall(require, "neosolarized")
if (not status) then return end

n.setup({
  comment_italics = true,
})

local cb = require('colorbuddy.init')
local Color = cb.Color
local colors = cb.colors
local Group = cb.Group
local groups = cb.groups
local styles = cb.styles

Color.new("base0" , "#FFFFFF")
Color.new("orange", "#FF8D3E")
Color.new("yellow", "#FFDA00")
Color.new("red", "#E32E24")
Color.new("white", "#FFFFFF")
Color.new("black", "#000000")
Color.new("green", "#D4F72D")
Color.new("blue" , "#00E9FF")
