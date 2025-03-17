class Triangle
	def initialize(a, b, c)
		@sides = [a, b, c]
		# raise ArgumentError unless valid_triangle?(sides) mine wasn't as descriptive
    raise ArgumentError.new "Invalid triangle lengths" unless valid_triangle?(sides) # from the book
	end

	def kind
		return 'equilateral' if sides.uniq.size == 1
		return 'isosceles' if sides.uniq.size == 2
		'scalene'
	end

	private
	
	attr_reader :sides # I dont' think this needs to be public
	
	def valid_triangle?(array)
	  return false if !array.size == 3 # Not explicitly tested but seems like a good idea
	  return false unless array.all? { |side| side > 0 } # Check length of sides
	  sides.sum - sides.max > sides.max # Every sum of 2 sides is larger than the remaining side
	end
end