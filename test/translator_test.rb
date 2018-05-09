require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'

class TranslatorTest < Minitest::Test

  def test_if_it_exists
    trans = Translator.new

    assert_instance_of Translator, trans
  end

  def test_eng_to_morse
    trans = Translator.new
    expected_1 = "......-...-..--- .-----.-..-..-.."
    actual_1 = trans.eng_to_morse("Hello World")
    expected_2 = "-......-.. .-.-.. ...-- ..........--...."
    actual_2 = trans.eng_to_morse("There are 3 ships")

    assert_equal expected_1, actual_1
    assert_equal expected_2, actual_2
  end

  def test_morse_to_eng
    trans = Translator.new
    expected = "helloworld"
    actual = trans.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")

    assert_equal expected, actual
  end

  def test_from_file
    skip
    trans = Translator.new
    expected = ".. .--- ..-. .- ..-....-..."
    actual = trans.from_file("input.txt")

    assert_equal expected, actual
  end


end
# YOUR TESTS GO IN HERE!
