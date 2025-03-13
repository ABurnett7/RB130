def count(array)
  count = 0
  array.each { |value| count += 1 if yield(value)}
  count
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2


# Follow up:

def count(array)
  count = 0
  for index in (0...array.size)
    count += 1 if yield(array[index])
  end
  count
end