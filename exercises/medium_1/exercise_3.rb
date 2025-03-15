# My solution...probably too simple:

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather
  puts "Let's start gathering food."
  yield
  puts "Nice selection of food we have gathered!"
end

gather{puts "#{items.join(', ')}"}

#Book solution

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

gather(items) { |items| puts items.join(', ')}