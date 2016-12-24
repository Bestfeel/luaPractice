--[[
 mvn 创建项目
说明：archetypeArtifactId（项目骨架的类型）
* maven-archetype-archetype
* maven-archetype-j2ee-simple
* maven-archetype-mojo
* maven-archetype-portlet
* maven-archetype-profiles (currently under development)
* maven-archetype-quickstart
* maven-archetype-simple (currently under development)
* maven-archetype-site
* maven-archetype-site-simple
* maven-archetype-webapp
 --]]
mavenTable = {
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
    print("脚本自动化创建maven项目")
    print("==================================")
    for k, v in ipairs(mavenTable) do
        print(k .. ")" .. v)
    end
    print("==================================")
end

usage()

io.write("请输入组织名称:")
group = io.read()
io.write("请输入项目名称:")
artifact = io.read()
io.write("请输入项目类型编号:")
id = io.read("*number")

mvnCommand = "mvn archetype:generate  " .. "-DgroupId=" .. group .. "  -DartifactId=" .. artifact .. "   -Dversion=1.0" .. "   -DarchetypeArtifactId=" .. mavenTable[id] .. "  -DarchetypeCatalog=local"
print("请确认信息,enter确认")
print("组织名称:" .. group)
print("项目名称:" .. artifact)
print("项目类型:" .. mavenTable[id])
print("版本号version:1.0")

local mvnCreate = io.popen(mvnCommand)
local result = mvnCreate:read("*all")
print(result)






