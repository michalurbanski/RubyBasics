x = "hello world"

ablock = Proc.new{puts(x)}

def aMethod(aBlockArg)
  x = "goodbye"
  aBlockArg.call
end

puts(x) # hello world
ablock.call # hello world
aMethod(ablock) # also hello world - so x in ablock proc is assigned and stored at different scope
ablock.call
puts(x) # goodbye is scoped only to a method so this will also pring hello world

