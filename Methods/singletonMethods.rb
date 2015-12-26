# Singleton methods presentation

class Creature
  def initialize(aSpeech)
    @aSpeech = aSpeech
  end

  def talk
    puts(@aSpeech)
  end
end

wolf = Creature.new("woof")
wolf.talk

dog = Creature.new("bow wow")
dog.talk

puts("Singleton methods for #{wolf.class.name} class are:")
singletonMethods = Creature.singleton_methods

# method definition outside of a class
def printSingletonMethods(methods)
  if methods.empty? then puts("No singleton methods found")
  else
    puts("Singleton methods are:")
    puts(methods)
  end
end

# should print no singleton method at this time
printSingletonMethods(singletonMethods)

# singleton method is a method for specific object
def wolf.howl
  puts("howl")
end

printSingletonMethods(wolf.singleton_methods) # object instance can have singleton method

def callMethodIfDefined(creature)
  if creature.respond_to?(:howl) then
    creature.howl
  end
end

puts("Calling singleton method...")
callMethodIfDefined(wolf)
callMethodIfDefined(dog) # dog has no singleton method defined

