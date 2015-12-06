# Treasure class which inherits from Thing

class Treasure < Thing
  attr_reader :value
  attr_writer :value

  def initialize(name, description, value)
    super(name, description) # call base class
    @value = value
  end

  def to_s
    self.inspect # prints all variables with their value
  end
end
