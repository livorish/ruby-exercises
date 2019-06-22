require 'cyrillizer'
Cyrillizer.language = :russian
puts "Введите фразу для обратной транслитерации: "
user_input = gets.chomp
output = user_input.to_cyr
puts output