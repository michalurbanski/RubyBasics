# Indexing into a string

name = "This is string"
puts(name)

# Change one character in string
name2 = name.clone
name2[0] = 'W' # both strings will be changed unless 'copy' method is used

puts("Changed strings")
puts("First original variable: #{name}")
puts("Second changed variable: #{name2}")

puts("\nPrinting first 4 characters")
puts(name[0,4]) # should print "This"

puts("Printing string starting from the end")
puts(name[-6,6]) # number of characters from the end plus number of characters to print
