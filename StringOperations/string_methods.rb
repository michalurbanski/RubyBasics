# Examples of methods called on strings

s = "Hello world"
puts(s.upcase) # all characters upper
puts(s.capitalize)
puts(s.capitalize!) # does not return anything so output will not change
                    # only in consecutive call this change will be visible
puts(s.reverse)
puts(s.swapcase)
puts(s.downcase)
puts(s.length)

puts("Splitted into array:")
puts(s.split) # split into array
