def count_frequency(word_list)
  word_list.inject(Hash.new(0)) { |counts, word| counts[word] += 1; counts }
end
