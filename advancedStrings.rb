# advanced strings operations

# backquotes means that operating system should be invoked
#puts `ls`

# strings concatenation
puts '-- String concatenation'
s = "Hello " << "world"
puts(s)
s = "Hello " + "world"
puts(s)
s = "Hello " "world"
puts(s)
puts '-'*20

# comma separator makes an array of string s
s = "This ", "is ", "strings array"
print("Print: ", s, "\n")
puts("The same array displayed using puts: ", s)
puts("Class of s is: #{s.class}")
