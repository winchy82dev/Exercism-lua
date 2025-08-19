local hello_world = {}

local function hello()
  print('Hello, World!')
end

function hello_world.hello()
  return hello()
end

return hello_world