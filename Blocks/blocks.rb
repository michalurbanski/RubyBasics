# Demonstration of blocks

# valid block statements
3.times do |i|
  puts(i)
end

3.times { |i|
  puts(i)
}

# blocks used for arrays
array = [2, 3, 4]
doubledArray = array.collect{|x| x*2} # when collect is used than original array is not changed
puts("Original array #{array}")
puts("Modified array #{doubledArray}")

# each does not create new array - both variables will hold original array elements
thirdArray = array.each{|x| x*2}
puts(array)
puts(thirdArray)
puts("Each does not create new array - both variables are the same")
puts(array.object_id)
puts(thirdArray.object_id)

# string examples
text = "hello world"
characters = text.split(//)
p(characters)

newstr = ''
a = characters.each{|x|
  newstr << x.capitalize
  puts(newstr)
}
p(a) # once again original variable is not change
puts(newstr)

# but using capitalize! will not work because this method
# returns nil when no change is made so for space character
# nil would be appended to string and this operation will fail

# Strings can be also capitalized by changinig to bytes
puts("Changing characters in string to bytes")
newstr = ''
b = text.each_byte{|x| newstr << (x.chr).capitalize}
puts(b)
puts(newstr)


