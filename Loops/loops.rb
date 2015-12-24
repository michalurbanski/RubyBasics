# Loops examples

array = [1,2,3]

for i in array do
  puts(i)
end

# This can also be written in a concised way
puts('Concise example')
for i in array do puts(i) end

# Another way to iterate over array elements
puts('Another way to iterate')
array.each do |i|
  puts(i)
end

# Standard while loop
counter = 0

puts('While loop printing values')
while counter < 10 do
  puts(counter)
  counter+=1
end

puts('Another syntax for while loop which works like do while loop')
counter = 0
begin
  puts(counter)
  counter+=1
end while counter < 0
