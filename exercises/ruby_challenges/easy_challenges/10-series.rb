class Series

  def initialize(number)
    @number = number
  end

  def slices(length)
    size = @number.size

    raise ArgumentError if length > size

    number_array = @number.chars.map(&:to_i)
    (0..size - length).map do |index|
      number_array[index, length]
    end
  end
end

