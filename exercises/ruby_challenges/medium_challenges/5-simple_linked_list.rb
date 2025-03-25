# Not done

class Element
  attr_reader :datum, :next
  @@last_created = nil
  
  
  def initialize(datum, next = nil)
    @datum = datum
    @next = @@last_created
    @@last_created = self
  end

  def tail?
    datum.nil?
  end
end

class SimpleLinkedList
  attr_reader :list

  def initialize(array=[])
    @list = array
  end

  def to_array
    list.to_a
  end

  def push(element)
    list.to_array.push(element)
  end

  def remove_head 
    list.to_array.delete_at(-1)
  end

  def peek
    list.to_array[-1]
  end

  def size
    list.to_array.size
  end

  def empty?
    list.to_array.empty?
  end

  def head_data
    list.to_array[-1].datum
  end

  def reverse_list
    list.to_array.reverse
  end
end


