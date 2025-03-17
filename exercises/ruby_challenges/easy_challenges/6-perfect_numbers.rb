class PerfectNumber
  
  def self.classify(number)
    raise StandardError if number < 1  # should validate outside of this?
    total = divisors_total(number)
    case 
      when total < number
        'deficient'
      when total == number
        'perfect'
      when total > number
        'abundant'
      end
  end

  private
  def self.divisors_total(number)
    (1..number-1).select { |candidate| number%candidate == 0}.sum
  end
end