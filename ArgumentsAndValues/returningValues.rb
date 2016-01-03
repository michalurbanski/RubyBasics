HELLO = "hello"

def method1
  HELLO # last statement is returned
end

def method2
end

puts(method1 == HELLO)
puts("Empty statement returns nil?: #{method2.nil?}")

# returning multiple values
def multipleValues
  greeting = "hello"
  return 1, 2, greeting # Ruby can return multiple values from method
end

p(multipleValues)
puts("Returned type is" + multipleValues.class.to_s)

# default values for methods
def default(a = 10, b) # it's possible in ruby to have default value as first parameter
  return a, b
end

p(default(2, 3))

# this is also possible and will return 10, 2
p(default(2))


# String arguments passed to method
puts("Strings in methods does not change original one")
first = "first"
second = "second"

def method3(first, second)
  first = first + second
end

puts(method3(first, second))
puts(first) # note that argument passed to function is not changed!


puts("But in some cases original sring can be changed - << operator")
# but string can be changed using << operator
def method4(first, second)
  first = first << second
end

puts(method4(first, second))
puts(first)

# Parallel assignments
puts("Parallel assignments demonstration")
s1, s2 = "first", "second"
p([s1, s2])

