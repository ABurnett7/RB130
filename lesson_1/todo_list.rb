# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end

# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title
  attr_reader :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(item)
    if item.class == Todo
      self.todos << item
    else
      puts "TypeError: Can only add Todo objects"
      # need rescue here
    end
  end
  alias_method :<<, :add

  def size 
    todos.size
  end

  def first
    todos.first.to_s
  end

  def last
    todos.last.to_s
  end

  def to_a
    todos.map { |item| item.to_s}
  end

  def done?
    todos.all? { |item| item.done == true}
  end

  def done!
    each { |item| item.done!}
  end
  alias_method :mark_all_done, :done!

  def not_done!
    each { |item| item.undone!}
  end
  alias_method :mark_all_undone, :not_done!

  def item_at(number=nil)
    if (0...size) === number
      puts to_a[number]
    elsif number == nil
      puts "ArgumentError: Please enter a number."
    else
      puts "IndexError: Number not in index."
    end
  end

  def mark_undone_at(number=nil)
    if (0...size) === number
      todos[number].done!
    elsif number == nil
      puts "ArgumentError: Please enter a number."
    else
      puts "IndexError: Number not in index."
    end
  end

  def remove_at(number=nil)
    if (0...size) === number
      todos.delete_at(number)
    elsif number == nil
      puts "ArgumentError: Please enter a number."
    else
      puts "IndexError: Number not in index."
    end
  end

  def pop
    todos.pop.to_s
  end

  def shift
    todos.shift.to_s
  end

  def to_s
    "---- Today's Todos ----\n" + todos.to_a.join("\n")
  end

  def each
    @todos.each do |todo|
      yield(todo)
    end
    self
  end

  def select
    temp_list = self.class.new('Temp List')
    each do |todo|
      temp_list << todo if yield(todo)
    end
    temp_list
  end

  def first
    todos.first
  end

  def find_by_title(title)
    select { |todo| todo.title == title }.first
  end

  def mark_done(title)
    todo = find_by_title(title)
    todo.done! if todo
  end

  def all_done
    select { |todo| todo.done? }
  end

  def all_not_done
    select { |todo| !todo.done? }
  end

  private
  attr_writer :todos

end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

# ---- Adding to the list -----

list.add(todo1)                 # adds todo1 to end of list, returns list
list.add(todo2)                 # adds todo2 to end of list, returns list
list.add(todo3)                 # adds todo3 to end of list, returns list

p list.find_by_title("Buy milk")
p list.find_by_title("Buy")

todo1.done!
p list.all_done
p list.all_not_done

list.mark_all_done 
p list.all_done
p list.all_not_done

list.mark_all_undone
p list.all_done
p list.all_not_done

list.mark_done("Buy milk")
p list.all_done