# Ruby arrays
# Array can hold values of different types even method calls

def array_length(array)
  array.length
end

def hello
  return "Hello world"
end

array = [1, "text", 3.0]
array2 = [1, "text2", array_length(array)]
p(array2) # is an abbreviation for print?

# Try to read value outside of the table
puts(array2[array_length(array2) + 1]) # from Ruby 1.9. this will be display empty string

# If nill should be displayed then use 'p'
p(array2[array_length(array2) + 1])

puts("Is empty: #{!array2.nil?}")

# Shorthand notation for array of strings
array = ["first", "second"]
array2 = %W(first second)

puts(array2)

# Create empty array intialized with 1's
array = Array.new(5, 1)
p(array)

# When method is added to array it's invoked
array[0] = hello # this will add result of hello method to array
p(array)
