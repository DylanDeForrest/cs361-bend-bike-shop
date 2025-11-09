# Bike

class Pannier

  attr_accessor :capacity, :items

  def initialize(capacity:)
    @capacity = capacity
    @items = []
  end

  def add(item)
    raise "Pannier is full" if full?
    @items << item
    self
  end

  def remove(item)
    @items.delete(item)
    self
  end

  def remaining_capacity
    capacity - items.size
  end

  def full?
    items.size >= capacity
  end

  def empty?
    items.empty?
  end
end



class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_reader :id, :color, :price, :weight

  def initialize(id:, color:, price:, weight: STANDARD_WEIGHT, rented: false,
                 pannier: Pannier.new(capacity: MAX_CARGO_ITEMS))
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @pannier = pannier
  end

  def rented?
    @rented
  end

  def rent!
    @rented = true
    self
  end

  def add_cargo(item)
    @pannier.add(item)
  end

  def remove_cargo(item)
    @pannier.remove(item)
  end

  def pannier_capacity
    @pannier.capacity
  end

  def pannier_remaining_capacity
    @pannier.remaining_capacity
  end

  def cargo_contents
    @pannier.items.dup
  end
end