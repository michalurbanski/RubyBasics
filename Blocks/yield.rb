def aMethod # this method expects a block
  yield
end

aMethod{ puts('Good morning') } # note that block is not passed as argument

def caps(arg)
  yield(arg)
end

puts("Capitalizes first character")
caps("simple lowercase text"){|x| x.capitalize!; puts(x)}

# blocks within blocks
puts
puts("Capitalizes all words in string")
b = "simple lowercase text".split(' ').each{ |s|
  caps(s) {|x| x.capitalize!; puts(x)}
}


