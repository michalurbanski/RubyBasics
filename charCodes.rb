# charCodes example

i = 65
s = "Hello" << i # << operators causes fixnum to be casted to char
puts(s)

s = "Hello" + i # + operator does not cast to char so this will throw TypeError
puts(s)

