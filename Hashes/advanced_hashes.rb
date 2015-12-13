# Advanced hashes operations

first = {
  1 => 3,
  4 => 5,
  2 => nil
}

puts(first)
puts("Sort method uses by default keys")
p(first.sort) # hash sort method converts hash array of key-values and sorts using Array sort method
p(first.sort.is_a?(Array))

# Delete element from first hash by key
puts("Removing item by key from hash")
first.delete(2)
p(first)

puts(first.has_key?(1))
puts(first.has_value?(nil))

puts("Show all keys:")
p(first.keys)

puts("Show all values")
p(first.values)

puts("In ruby it's possible to invert hash values")
p(first)
p(first.invert)

# Find index of a key in hash
puts(first.has_key?(4))
#puts(first.key(4)) # Does not seem to work
