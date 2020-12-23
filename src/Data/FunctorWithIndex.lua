
local function mapWithIndexArray(f)
  return function(xs)
    local result = {}
    for i = 1, #xs do
      table.insert(result, f(i)(xs[i]))
    end
    return result
  end
end

return {
  mapWithIndexArray = mapWithIndexArray
}
