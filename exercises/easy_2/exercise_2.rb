def zip(arr_1, arr_2)
  arr_1.map.with_index{ |_, index| [arr_1[index], arr_2[index]]}
end

# Not sure if map.with_index is cheating here, if so this works:

def zip(arr_1, arr_2)
  output = []
  counter = 0 
  while counter < arr_1.size
    output << [arr_1[counter], arr_2[counter]]
    counter += 1
  end
  output
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]