# thing parent class

class Thing
  attr_accessor :name, :description

  @@num_things = 0 # class variables

  def initialize(name, description)
    @name = name
    @description = description
    @@num_things += 1
  end

  def to_s
    "(Thing.to_s):: Then name is #{@name}, description is #{@description}"
  end

  def self.get_things_num # instance method definition
    @@num_things
  end

end
