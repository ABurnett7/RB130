# Hashed out the idea of what a linked list even is.
# This is not what the problem is asking for, I was just trying to make sense of the idea first.


class Element
  attr_reader :datum, :name, :next

  def initialize(name, datum = nil)
    @name = name
    @datum = datum
    @next = nil  
  end

  def set_next(index, reverse)
    if reverse
      @next = index > 0 ? index - 1 : nil
    else
      @next = index < LinkedList.linked_list.size - 1 ? index + 1 : nil
    end
  end
end

class LinkedList
  attr_reader :element 

  @@linked_list = []
  @@reverse_order = false

  def initialize(name, datum = nil)
    element = Element.new(name, datum)
    @@linked_list << element
    self.class.update_next_pointers
  end

  def self.linked_list
    @@linked_list.each_with_index do |element, index|
       puts "name: #{element.name}, next: #{element.next}"
    end
  end

  def self.update_next_pointers
    @@linked_list.each_with_index do |element, index|
      element.set_next(index, @@reverse_order)
    end
  end

  def self.reverse_order
    @@reverse_order = true
    update_next_pointers
  end

  def self.normal_order
    @@reverse_order = false
    update_next_pointers
  end
end

