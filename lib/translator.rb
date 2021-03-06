
class Translator

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def eng_to_morse(english)
    english = english.downcase
    eng_arr = english.split("")
    morse_arr = eng_arr.map { |char| @dictionary[char] }
    morse = morse_arr.join
  end

  def from_file(new_file)
    file = File.open(new_file, "r")
    text = file.read
    file.close
    eng_to_morse(text)
  end

  def morse_to_eng(morse)
    morse_arr = morse.split("  ")
    word_arr = morse_arr.map { |word| word.split(" ")}
    word_arr.map! do |word|
      word.map! { |letter| @dictionary.key(letter) }
    end
    word_arr.map! { |word| word.join + " " }
    word_arr.join.chop
  end
end
