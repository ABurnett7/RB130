# What I wrote thinking we shouldn't use .each

def any?(array)
  counter = 0 
  while counter < array.size
    value = array[counter]
    return true if yield(value)
    counter += 1
  end
  false
end

# with each:

def any?(array)
  array.each { |value| return true if yield(value)}
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false