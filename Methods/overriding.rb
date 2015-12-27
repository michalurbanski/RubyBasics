class MyClass

  # overriden to_s method
  # NOTE that no additional keyword is required
  def to_s
    return "Custom overriden to_s method"
  end
end

first = MyClass.new
puts(first.to_s) # standard object to_s methods prints class name and objects unique identifier
puts(first.object_id)
