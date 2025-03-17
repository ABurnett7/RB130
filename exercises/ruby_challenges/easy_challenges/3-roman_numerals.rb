
class RomanNumeral 
  ROMAN_NUMERALS = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I' }

  def initialize(number)
    @number = number
  end

  def to_roman
    number = @number
    roman_numeral = ''
    ROMAN_NUMERALS.each do |value, symbol|
      while number >= value
        roman_numeral << symbol
        number -= value
      end
    end
    roman_numeral
  end
end
