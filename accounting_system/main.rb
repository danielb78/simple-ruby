require_relative 'account'
require_relative 'transaction'

checking = Account.new(100)
saving = Account.new(200)

trans = Transaction.new(checking, saving)
trans.transfer(50)

puts "checking: #{checking.balance}, saving: #{saving.balance}"
puts saving.greather_balance_than?(checking) ? "yes" : "no"

# run 'ruby main.rb'
# result will be: 'checking: 50, saving: 250'