class Luggage
  DEFAULT_MAX_CAPACITY = 10

  attr_reader :max_capacity, :items

  def initialize(max_capacity, items)
    @max_capacity = max_capacity
    @items = items
  end

  def weight
    items.size
  end
end
