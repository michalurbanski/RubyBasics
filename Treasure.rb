# Treasure class which inherits from Thing

class Treasure < Thing
  attr_reader :value
  attr_writer :value

  def initialize(name, description, value)
    super(name, description) # call base class
    @value = value
  end
end
