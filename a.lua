--function 的使用
--io.read 的使用

function add(num)
    if num < 0 then
        print("请输入正整数")
    else
        return num * 10
    end
end

print("请输入正整数")
--a=io.read("*number")
while (true)
do
    repeat
        io.write(">>")
        a = io.read()
        if (a == "quit") then
            print("break..")
            break
        end
        num = tonumber(a)
    until num ~= nil
    if (num == nil)
    then
        break
    else
        print(">>" .. add(num))
        a = nil
        print("继续执行...")
    end
end
