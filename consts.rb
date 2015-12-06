# consts example

class X

  A = 10 # constants are always upper-case

  class Y # internal class
  end
end


X::Y.new # special syntax to get constant value (class names are constant)
puts "Constant value A is #{X::A}"
