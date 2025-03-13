def divisors(number)
  return false if number < 1 # don't need for test cases
  (1..number).to_a.select { |candidate| number % candidate == 0 }
end

p divisors(1) == [1]                    # true
p divisors(7) == [1, 7]                 # true
p divisors(12) == [1, 2, 3, 4, 6, 12]   # true
p divisors(98) == [1, 2, 7, 14, 49, 98] # true
start = Time.now
p divisors(99400891) #== [1, 9967, 9973, 99400891] # may take a minute
done = Time.now
p "#{done - start} seconds " # 5.043388054 seconds