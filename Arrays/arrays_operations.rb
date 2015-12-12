# Operations on arrays

# Elements to new array can be added dynamicaly
array = Array.new
array[0] = 1
array[1] = 2
p(array)

# Iterating over array
for s in array
  puts(s)
  #print("#{s}\n") # equivalent of puts
end

second_array = %W(h e l l o)
print(second_array[0,3]) # prints first 3 characters
print("\n")

# Another simple way to create array
third_array = []
third_array[1] = "test" # first element will be nil
p(third_array)

# Copy array content to another array
third_array = array
puts(third_array <=> array) # 0 values means that arrays are equal

# These 2 lines are equivalent
puts("Are both arrays the same object? " + (third_array.object_id == array.object_id).to_s)
puts("Are both arrays the same object? #{third_array.object_id == array.object_id}")

copied_array = array.clone
puts(copied_array <=> array)

puts("Are both arrays the same object after cloning? " \
  + (copied_array.object_id == array.object_id).to_s)

# NOTE: \ allows to split statement into multiple lines

