
local function foldrArray(f)
  return function(init)
    return function(xs)
      local acc = init
      local i = #xs
      while i > 0 do
        acc = f(xs[i])(acc)
        i = i - 1
      end
      return acc
    end
  end
end

local function foldlArray(f)
  return function(init)
    return function(xs)
      local acc = init
      for i = 1, #xs do
        acc = f(acc)(xs[i])
      end
      return acc
    end
  end
end

return {
  foldrArray = foldrArray,
  foldlArray = foldlArray
}
