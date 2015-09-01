# thing parent class

class Thing
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end

  def to_s
    "(Thing.to_s):: Then name is #{@name}, description is #{@description}"
  end

end
