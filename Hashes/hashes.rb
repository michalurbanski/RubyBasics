# Operations on hashes

first = Hash.new # empty hash with nil as default value
puts(first)
p(first[0])

# Hash initialized with specific value
puts("Second hash:")
second = Hash.new("default value")
puts(second)
p(second[0])

# Get default value for hash
puts("Default value for second hash is: #{second.default}")

# Construct hash with initializer
puts("Inline constructed hash")
initializer = {
  'first' => 'value',
  'second' => 2
}

puts(initializer)
puts(initializer['second'].class) # returns Fixnum - hash can store different objects
puts(initializer['second'].is_a?(Fixnum)) # confirmation that value is a fixnum

copied = initializer.clone # clone hash
copied['second'] = 3
puts("Old value before cloning is #{initializer['second']}")
puts("New value in cloned hash is #{copied['second']}")
