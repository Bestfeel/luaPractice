-- 外部库的加载和使用
--  使用 dofile /  require

--dofile("lib.lua")

require "lib"

local a = add(100, 30)
print("add:" .. a)

local b = div(40, 8)
print("div:" .. b)