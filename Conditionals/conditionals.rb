# Presentation of conditional statements

number = 2

if number == 2
  puts("This is a correct number")
  puts("Second line can also be placed in if statement")
end

# if condition and command is in one line 'then' keyword is obligatory
if number == 2 then puts("This is also a correct number") end

# if - elsif - else statement
# NOTE: in each case 'then' keyword can be used
if number < 2
  puts("Number less than 2")
elsif number == 2
  puts("Number is equal to 2")
else
  puts("Number is greater than 2")
end

# unless
# unless = if not
unless number == 2 then number = 3 end
puts("Unless condition number is " + number.to_s)

# case-when statements
# NOTE: in when use number values not comparisons
case(number)
  when 1 then
    puts("Number is 1")
  when 2 then puts("Number is 2")
  else # else is equivalent to default in C#
    puts("Number not in list")
end

