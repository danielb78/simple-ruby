require_relative 'counts_frequency'
require 'test/unit'

class CountsFrequencyTest < Test::Unit::TestCase
  def test_empty_list
    assert_equal({}, count_frequency([]))
  end

  def test_single_word
    assert_equal({'daniel' => 1}, count_frequency(['daniel']))
  end

  def test_multiple_words
    assert_equal({'daniel' => 2, 'boldan' => 1}, count_frequency(['daniel', 'boldan', 'daniel']))
  end
end