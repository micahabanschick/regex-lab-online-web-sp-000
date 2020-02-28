require 'pry'

def starts_with_a_vowel?(word)
  word[0].match(/[aeiouAEIOU]/) != nil ? true : false 
end

def words_starting_with_un_and_ending_with_ing(text)
  text.split(" ").filter{|word| word[0..1].match(/un|Un/) != nil && word[word.length - 3...word.length].match(/ing/) != nil}
end

def words_five_letters_long(text)
  text.split(" ").filter{|word| word.length == 5} 
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text[0].match(/[A-Z]/) && text[text.length - 1].match(/[!.?]/) ? true : false
end

def valid_phone_number?(phone)
  #binding.pry
  phone.match(/\(?(\d{3})\)?-?\s?(\d{3})-?\s?(\d{3})/) ? true : false
end
