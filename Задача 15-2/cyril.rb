require 'cyrillizer'
Cyrillizer.language = :russian
puts "Введите фразу для транслитерации: "
user_inputs = gets.chomp.to_cyr  
output = user_inputs.to_lat
puts output 

