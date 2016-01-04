# Presentation of exceptions in Ruby

puts("Simple exception handling")
begin
  x = 1/0
rescue Exception
  puts($!.class)
  puts($!) # $! is an exception message
end

# Exception can be also aliased
begin
  x = 1/0
rescue Exception => ex # example of aliasing an exception
  puts(ex.class)
  puts(ex)
end

# Specific exception class handling
status = nil
begin
  x = 1/0
rescue ZeroDivisionError
  puts("Zero division error handled")
rescue Exception => ex
  puts(ex.class)
  puts(ex)
else
  # executes only when no exception occured - this will not be printed in this case
  puts("No exception has occured")
ensure # equivalent of finally from C# - executes always
  puts("Ensure clause executed")
end

# All error numbers in ruby
puts("Printing error numbers...")
puts(Errno.constants)


# Ruby has also concept of retry - below example
retryCount = 0
begin
  retryCount += 1
  x = 1/0
rescue Exception => ex
  puts("Exception with message: #{ex} - caught")
  if(retryCount < 3)
    retry # once again executes begin block
  end
ensure
  puts("Execution finished after #{retryCount} retries")
end

# Raising an exception
begin
  x = 1/0
rescue Exception => ex
  puts("Printing backtrace...")
  puts
  puts(ex.backtrace) # prints backtrace for this exception
  puts("Exception caught and logged")
  raise ZeroDivisionError.new("Custom message for an exception")
end

