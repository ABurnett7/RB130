class SumOfMultiples
  def initialize(*divisors)
    @divisors = divisors.empty? ? [3, 5] : divisors
  end

  def self.to(number)
    self.new.to(number)
  end

  def to(number)
    results = []

    @divisors.each do |divisor|
      (1..number-1).each do |candidate|
        results << candidate if candidate % divisor == 0
      end
    end
    results.uniq.sum
  end
end