# advanced strings operations

def show_delimiter
  puts '-' * 20
end


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
show_delimiter

# comma separator makes an array of string s
s = "This ", "is ", "strings array"
print("Print: ", s, "\n")
puts("The same array displayed using puts: ", s)
puts("Class of s is: #{s.class}")

# allows to print object_id
s = "Quite a new string"
puts "-- Object ids"
firstObjectId = s.object_id
puts("Object id is: #{firstObjectId}")

s = s.capitalize # without exclamation mark this assignment will create new line
secondObjectId = s.object_id
puts("Object id is: #{secondObjectId}")
puts("Are object ids equal?: #{firstObjectId == secondObjectId}")
show_delimiter




