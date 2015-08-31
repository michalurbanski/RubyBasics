# Treasure class which inherits from Thing

class Treasure < Thing
  def initialize(name, description, value)
    super(name, description) # call base class
    @value = value
  end

  def get_value
    @value
  end

  def set_value(value)
    @value = value
  end
end
