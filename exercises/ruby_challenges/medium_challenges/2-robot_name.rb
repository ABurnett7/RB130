class Robot
  attr_reader :name
  @@robot_names = []

  def initialize
    @name = self.generate_unique_name
    @@robot_names << name
  end

  def name=(name)
    @name = self.generate_unique_name
  end
  
  def reset
    @@robot_names.delete(name)
    self.name = nil
  end

  def self.robot_names
    @@robot_names
  end

  private

  def generate_unique_name
    loop do
      name = generate_name
      return name unless @@robot_names.include?(name)
    end
  end

  def generate_name
    letters = Array.new(2) { ('A'..'Z').to_a.sample }
    digits = Array.new(3) { rand(0..9).to_s }
    (letters + digits).join
  end
end