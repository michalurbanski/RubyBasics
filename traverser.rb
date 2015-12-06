# traverses class hierarchy

class One
end

class Two < One
end

ob = Two.new
x = ob.class # gets class name
puts(x)

# NOTE: in ruby 1.9 Object inherits from BaseObject
begin
  x = x.superclass
  puts x.inspect
end until x == nil
