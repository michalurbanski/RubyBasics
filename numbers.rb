=begin
this is multiline comment
Begin and end must start and end at the line beginning
=end

# method not in the class has to be declared before call
def prompt_user_for_input
  puts 'Please enter value'
end

puts 'This is numbers example'

first = 1
second = 2
prompt_user_for_input
input = gets
total = first + second + input.to_f # to_f converts to floating number
									# if conversion is not possible than 0.0 is returned during conversion
puts "first is #{first}, second is #{second}, total is #{total}"

puts '------ if-then example ------'
prompt_user_for_input
input = gets
input = input.to_f

if input > 0
  puts 'This number is positive'
else
  puts 'This number is negative'
end

if input > 0 then puts 'Once again positive' end # if-then example


