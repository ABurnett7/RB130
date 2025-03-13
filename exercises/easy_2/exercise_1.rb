def step(start, stop, increment)
  up_next = start 
  until up_next > stop 
    yield(up_next)
    up_next += increment
  end
  start..stop
end


p step(1, 10, 3) { |value| puts "value = #{value}" }

# chose to return a Range as that is what the Range#step method does
# though, the Range#step method really just returns self. 