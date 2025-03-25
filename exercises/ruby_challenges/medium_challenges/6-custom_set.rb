class CustomSet
  attr_accessor :set

  def initialize(array=[])
    @set = array
    @set.uniq!
  end

  def empty?
    set.empty?
  end

  def intersection(other)
    CustomSet.new(set & other.set)
  end

  def union(other)
    CustomSet.new(set.union(other.set))
  end

  def difference(other)
    CustomSet.new(set - other.set)
  end

  def disjoint?(other)
    set.none? { |element| other.set.include?(element)}
  end

  def eql?(other)
    return false if set.size != other.set.size
    set.sort == other.set.sort
  end

  def subset?(other)
    set.all? { |element| other.set.include?(element) }
  end

  def add(element)
    if !set.include?(element)
      set << element
    end
    self
  end

  def contains?(element)
    set.include?(element)
  end
  
  def ==(other)
    set.sort == (other.set.sort)
  end
end