require 'csv'
require_relative 'fruit_in_stock'

class CsvReader
  def initialize
    @fruits_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @fruits_in_stock << FruitInStock.new(row['Fruit'], row['Price'])
    end
  end

  def total_value_in_stock
    @fruits_in_stock.inject(0) { |sum, fruit| sum + fruit.price }
  end
end