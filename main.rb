# main class for examples

require_relative 'Thing' # require_relative is new in ruby 1.9
require_relative 'Treasure'

treasure = Treasure.new('test', 'this is long description', 1)
puts "name: #{treasure.name}"

thing = Thing.new('thing', 'thing description')
puts thing.to_s
