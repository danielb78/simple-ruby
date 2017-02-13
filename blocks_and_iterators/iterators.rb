# iterators methods that return successive element
# from some kind of collection. e.g Array
fruits = %w(apple orange banana)
fruits.each { |fruit| puts fruit }

5.times   { print '1' }
3.upto(6) { |i| print i }
('a'..'e').each { |char| print char }

