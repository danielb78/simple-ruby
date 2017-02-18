def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end

# p Integer.all.first(10)

# multiples of 3
# p Integer
#       .all
#       .select { |i| (i % 3).zero? }
#       .first(10)

# multiples of 3 whose string represantations are palindrome
# p Integer
#       .all
#       .select { |i| (i % 3).zero? }
#       .select { |i| i.to_s == i.to_s.reverse }
#       .first(10)

# def palindrome?(n)
#   n = n.to_s
#   n == n.reverse
# end

# p Integer
#       .all
#       .select { |i| (i % 3).zero? }
#       .select { |i| palindrome? i }
#       .first(10)

# multiple_of_three = Integer
#                         .all
#                         .select { |i| (i%3).zero? }
#
# m3_palindrome = multiple_of_three
#                     .select { |i| palindrome? i }
#
# p m3_palindrome.first(10)


# predicates as free-standing procs
multiple_of_three = -> n { (n % 3 ).zero? }
palindrome        = -> n { n = n.to_s; n == n.reverse }

p Integer
      .all
      .select(&multiple_of_three)
      .select(&palindrome)
      .first(10)