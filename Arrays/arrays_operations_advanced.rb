# Advanced operations on arrays
arr = [3, 1, 4]
second_array = [1, nil, 3]

p(arr)
p(second_array)

# Sort array
puts("Sorted first array using standard sort operator")
p(arr.sort)

puts("Sorted second array using standard sort operator")

# p(second_array.sort) # this will throw exception - array with nil can't be sorted in this way
p(second_array.sort { |a, b| a.to_s <=> b.to_s }) # nil will go first

# sort descending the same array
p(second_array.sort { |a, b| b.to_s <=> a.to_s })

# +, -, &, << operators
puts
puts("Add arrays \"+\"")
p(arr + second_array)

puts("Subtract arrays first \"-\" second")
p(arr - second_array)

puts("Find common part of arrays using \"&\"")
p(arr&second_array)

puts("Appends second array as another element to first array - permanent operation")
p(arr << second_array)
p(arr)

# Remove nil elements from flattened array
puts("Removes nil from flattened array")
arr.flatten!.compact!
p(arr)

# Now sort array without nil elements descending and remove all 3's
puts("Removes all 3's from array")
arr.delete(3) # NOTE: delete returns removed element
p(arr.sort.reverse)

puts("Cleared array should not be nil but have no elements")
p(arr.clear.nil?)
p(arr.length)
