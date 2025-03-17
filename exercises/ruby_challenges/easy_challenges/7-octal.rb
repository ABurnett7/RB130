class Octal
  def initialize(number)
    @number = ( number.match?(/[^\d]|[89]/) ? 0 : number.to_i) 
  end

  def to_decimal
    @number.digits.map.with_index { |digit, index| digit * 8**index }.sum
  end
end