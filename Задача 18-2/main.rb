require "unicode_utils"

# example how to use an unicode_utils gem
#UnicodeUtils.upcase("weiß") => "WEISS"

user_word = gets.chomp.delete(" ")
word = UnicodeUtils.upcase(user_word)

reverce = word.reverse  


if reverce == word
    puts "this is a palindrom"
else 
    puts "this is not a palindrom"
end