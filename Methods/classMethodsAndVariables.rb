# Presentation of class methods and variables

class MyClass
  @@instanceCounter = 0 # class variable has to be initialized

  def initialize
    @@instanceCounter += 1
  end

  def MyClass.classMethod
    puts("Class method")
  end

  def instanceMethod
    puts("Instance method")
  end

  def getInstanceCounter
    @@instanceCounter
  end
end

# class method can be called without instantiation
MyClass.classMethod

# in order to call instance method instance of an object must be created
myClass = MyClass.new
myClass.instanceMethod

# but class method can't be called on instance
# myClass.classMethod # -> this will show that method is undefined
puts("Instance counter is " + myClass.getInstanceCounter.to_s) # note that to_s method must be called
