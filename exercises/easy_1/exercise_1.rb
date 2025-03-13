class Tree
  include Enumerable

  def each; end

  def select; end

  def reduce; end

  def <=>
    # logic for how to compare 
  end
end

# If we were to know what the elements were(arrays of numbers for instance)
# Then this would be a more thorough approach

class Tree

  def each(collection)
    counter = 0
    while counter < collection.size
      yield(collection[counter])
      counter += 1
    end
    collection
  end

  def select(collection)
    counter = 0
    result = []
    while counter < collection.size
      current = collection[counter]
      result << current if yield(current)
      counter += 1
    end
    result
  end

  def reduce(collection, accumulator = 0)
    counter = 0
    acc = accumulator
    while counter < collection.size
      acc = yield(acc, collection[counter])
      counter += 1 
    end
    acc
  end
end

arr = [1, 2, 3, 4]
p Tree.new.each(arr) { |element| puts element} 
# Output 
# 1 
# 2
# 3
# 4
# => [1, 2, 3, 4]

p Tree.new.select(arr) { |element| element.even?} # [2, 4]

p Tree.new.reduce(arr, 1) { |acc, element| acc * element } # 24
p Tree.new.reduce(arr) { |acc, element| acc + element } # 10