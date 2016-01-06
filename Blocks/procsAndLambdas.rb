# Procs and lambdas

# block is not an object in Ruby but it can be turned into object
a = Proc.new{|x| x=x*10; puts(x)} # Does not check number of arguments
b = lambda{|x| x=x*10; puts(x)} # checks number of arguments
c = proc{|x| x.capitalize!} # same as Proc.new in ruby 1.9

a.call(10)
a.call(10, 100) # number of arguments is not checked

puts("Calling lambda with wrong number of arguments")

begin
  b.call(10, 100) # lambda call with wrong number of arguments will throw exception
rescue
  puts("This call is not valid")
end

d = ["hello", "world"].each{|s| c.call(s)}
puts(d.inspect)
p(d) # inspect and p are equivalent
