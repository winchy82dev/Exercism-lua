local hamming = {}

local function hello()
  print("Hello, World!")
end

function hamming.hello()
  return hello()
end

return hamming
