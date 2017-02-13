# in terminal: go to file folder and type 'ruby blocks.rb'
# Simple example yield
def call_block
  puts 'Start method'
  yield
  puts 'End method'
end

call_block { puts 'In the block' }

# example with block params
def who_say_what
  yield('Daniel', 'hello')
  yield('Vasile', 'good bye')
end

who_say_what { |person, phrase| puts "#{person} says #{phrase}" }