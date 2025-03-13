def compute 
  block_given? ? yield : 'Does not compute.'
end

p compute { 5 + 3 } == 8          # true
p compute { 'a' + 'b' } == 'ab'   # true
p compute == 'Does not compute.'  # true