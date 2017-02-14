require_relative 'words_from_string'
require 'test/unit'

class WordsFromStringTest < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(''))
    assert_equal([], words_from_string('    '))
  end

  def test_single_word
    assert_equal(['daniel'], words_from_string('daniel'))
    assert_equal(['daniel'], words_from_string('    daniel  '))
  end

  def test_many_words
    assert_equal(['daniel', 'boldan'], words_from_string('daniel boldan'))
    assert_equal(['daniel', 'boldan', 'developer'], words_from_string('daniel boldan   developer'))
  end

  def test_ignore_punctuations
    assert_equal(['daniel', 'boldan'], words_from_string('<daniel>! boldan.'))
  end
end

# run test: 'ruby words_from_string_test.rb'