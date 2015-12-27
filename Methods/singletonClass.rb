# Singleton class is quite similar to singleton methods concept

obj = Object.new

# Define anonymous class
# This class allows to define all methods in one place (class)
class << obj
  def speak(name)
    puts(name)
  end
end

obj.speak("hi")
puts(obj.respond_to?(:speak)) # singleton class methods are in fact singleton methods
