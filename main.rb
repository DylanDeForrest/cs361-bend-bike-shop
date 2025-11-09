!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(id: 1, color: :pink, price: 19.99)

bike.add_cargo(:apples)
bike.add_cargo(:water)
bike.add_cargo(:repair_kit)

puts "Space for #{bike.pannier_remaining_capacity} items left."

bike.rent!
