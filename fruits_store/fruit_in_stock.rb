class FruitInStock
  attr_reader :fruit, :price
  
  def initialize(fruit, price)
    @fruit = fruit
    @price = Float(price)
  end

  def to_s
    "Fruit: #{fruit}, price: #{price}"
  end
end