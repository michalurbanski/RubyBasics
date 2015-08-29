# numbers example

puts 'This is numbers example'

first = 1
second = 2
input = gets
total = first + second + input.to_f # to_f converts to floating number
									# if conversion is not possible than 0.0 is returned during conversion
puts "first is #{first}, second is #{second}, total is #{total}"
