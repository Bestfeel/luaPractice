#!/usr/bin/env lua

--[[
 mvn 创建项目
说明：archetypeArtifactId（项目骨架的类型）
 maven-archetype-archetype
 maven-archetype-j2ee-simple
 maven-archetype-mojo
 maven-archetype-portlet
 maven-archetype-profiles (currently under development)
 maven-archetype-quickstart
 maven-archetype-simple (currently under development)
 maven-archetype-site
 maven-archetype-site-simple
 maven-archetype-webapp
 --]]
local MAVEN_TABLE = {
    'maven-archetype-archetype',
    'maven-archetype-j2ee-simple',
    'maven-archetype-mojo',
    'maven-archetype-portlet',
    'maven-archetype-profiles',
    'maven-archetype-quickstart',
    'maven-archetype-simple',
    'maven-archetype-site',
    'maven-archetype-site-simple',
    'maven-archetype-webapp'
}
function usage()
    print("创建maven项目的脚手架")
    print("==================================")
    for k, v in ipairs(MAVEN_TABLE) do
        print(k .. ")" .. v)
    end
    print("==================================")
end

usage()

io.write("请输入组织名称:")
local group = io.read()
io.write("请输入项目名称:")
local artifact = io.read()
io.write("请输入项目类型编号:")
local id = io.read("*number")


local mvncommand = "mvn archetype:generate  " .. "-DgroupId=" .. group .. "  -DartifactId=" .. artifact .. "   -Dversion=1.0" .. "   -DarchetypeArtifactId=" .. MAVEN_TABLE[id] .. "  -DarchetypeCatalog=local"
print("==================================")
print("请确认信息,(enter)确认")
print("==================================")
print("组织名称:" .. group)
print("项目名称:" .. artifact)
print("项目类型:" .. MAVEN_TABLE[id])
print("版本号version:1.0")
local mvncreate = io.popen(mvncommand)
local result = mvncreate:read("*all")
print(result)






