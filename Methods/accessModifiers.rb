# Access modifiers in Ruby

class MyClass

  private # access modifier
    def priv
      puts("private")
    end

  protected
    def prot
      puts("protected")
    end

  public
    def pub
      puts("public")
    end

    def useObject(obj)
      obj.pub
      obj.prot
      obj.priv
    end
end

myObject = MyClass.new
myObject.pub
#myObject.prot # protected can't be called - NoMethodError
#myObject.priv # same as for protected method

puts("Object of the same class passed to a method")
secondObject = MyClass.new
secondObject.useObject(myObject)

# !!! Note that protected method call will work in this case.
# In Ruby when two objects of the same class are within the scope
# defined by that class then protected method of this class becomes visible
