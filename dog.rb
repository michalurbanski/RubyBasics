# class usage

class Dog

  def initialize(name)
    @name = name
  end

  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end

  def talk
    puts 'Woof'
  end

  def to_s # override existing object method
    "Dog name is #{@name}\n"
  end

end


# myDog = Dog.new
# myDog.set_name 'jacky' # Without this line ruby will return nil when get_name method is used
# puts myDog.get_name
# myDog.talk

puts '------ Another way - use initializer ----- '
myDog = Dog.new('second name')
puts myDog

# The inspect method allows to look into object
puts myDog.inspect
p myDog # shorthand for inspect method


