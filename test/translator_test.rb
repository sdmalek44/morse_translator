require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'

class TranslatorTest

  def test_if_it_exists
    trans = Translator.new

    assert_instance_of Translator, trans
  end

  def test_eng_to_morse
    trans = Translator.new
    expected = "......-...-..--- .-----.-..-..-.."
    actual = trans.eng_to_morse("Hello World")

    assert_equal expected, actual
  end
  #
  # def test_morse_to_eng
  #   trans = Translator.new
  #   expected = "hello world"
  #
  #   actual = trans.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  # end


end
# YOUR TESTS GO IN HERE!
