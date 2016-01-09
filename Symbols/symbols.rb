# each string has different id
puts("Strings")
puts("hello".object_id)
puts("hello".object_id)

# each symbol has the same id
puts("Symbols")
puts(:hello.object_id)
puts(:hello.object_id)

# each integer has the same id
puts("Integers")
puts(10.object_id)
puts(10.object_id)

puts("Strings equality")
puts("a".equal?("a"))

first = "a"
second = "a"
puts("Value comparison " + (first == second).to_s) # this the way to make simple string comparison

# symbols
x = 1
xsymbol = :x

p(eval(:xsymbol.id2name)) # this will print :x
p(eval(xsymbol.id2name)) # this will print 1 (value of x)

# after executing this code class will have aNewMethod defined - dynamic creation
class Array
  define_method(:aNewMethod, lambda{
      |*args| puts(args.inspect)
    })
end

p(Array.method_defined?(:aNewMethod))
[].aNewMethod(1, 2, 3)


