require 'minitest/autorun'
require_relative 'word_counter'

class WordCounterTest < Minitest::Test
  def test_when_the_input_is_an_Array
    #skip
    input = ["I will like to stop at the light", "The light is red"]
    output = { i:1, will:1, like:1, to:1, stop:1, at:1, the:2, light:2, is:1, red:1 }
    assert_equal output, WordCounter.counter(input)
  end 

  def test_when_the_input_is_a_String
    #skip
    input = "I will like to stop at the light The light is red"
    output = { i:1, will:1, like:1, to:1, stop:1, at:1, the:2, light:2, is:1, red:1 }
    assert_equal output, WordCounter.counter(input)
  end

  def test_when_the_input_has_a_number
    #skip
    input = "I will count until ten 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10"
    output = { i:1, will:1, count:1, until:1, ten:1 }
    assert_equal output, WordCounter.counter(input)
  end

  def test_when_the_input_has_word_with_a_number
    #skip
    input = "This word is no valid word beacuse it has a number: S0top"
    output = { this:1, word:2, is:1, no:1, valid:1, beacuse:1, it:1, has:1, a:1, number:1, s:1, top:1}
    assert_equal output, WordCounter.counter(input)
  end
end