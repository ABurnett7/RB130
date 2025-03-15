# #1 
items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*first_line, second_line |
  puts "#{first_line.join(', ')}"
  puts "#{second_line}"
end

# Output: 
# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

# #2

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | first_line, *second_line, third_line |
  puts "#{first_line}"
  puts "#{second_line.join(', ')}"
  puts "#{third_line}"
end

# Output:
# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!


# #3 

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |first_line, *second_line|
  puts "#{first_line}"
  puts "#{second_line.join(', ')}"
end

# Output
# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

# #4

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do | first, second, third, fourth|
  puts "#{first}, #{second}, #{third} and #{fourth}"
end

# Output:

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!