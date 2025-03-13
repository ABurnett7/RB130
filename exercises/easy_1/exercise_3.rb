def missing(array)
  (array[0]..array[-1]).to_a - array
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4] # true
p missing([1, 2, 3, 4]) == []                 # true
p missing([1, 5]) == [2, 3, 4]                # true
p missing([6]) == []                          # true