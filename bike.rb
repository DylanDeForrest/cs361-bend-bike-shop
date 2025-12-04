# Bike
require_relative 'luggage'

class Bike
  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :base_price, :base_weight, :luggage

  def initialize(id, color, base_price, extra_items)
    @id = id
    @color = color
    @base_price = base_price
    @base_weight = STANDARD_WEIGHT
    @luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, extra_items)
  end

  def weight
    base_weight + luggage.weight
  end

  def price
    base_price + 2 * base_weight + 2 * luggage.weight
  end
end

