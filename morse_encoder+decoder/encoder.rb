require_relative "morse"

def encode(text)
  words = text.gsub(/[,;.!?]/, " ").split
  words.map {|word| encode_word(word)}.join("|")
end

def encode_word (word)
  word.chars.map {|letter| MORSE[letter.upcase]}. join(" ")
end

puts encode("I love coding")
