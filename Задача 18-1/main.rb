original_string = gets.chomp.downcase

temp = original_string.split(' ')
merge = temp.join()
original_string = merge
# получаем перевернутую строку 
revert_string = original_string.reverse

# сравниваем обе строки и выносим вердикт
if revert_string == original_string
	puts 'Да, это палиндром'
else
	puts 'нет, это не палиндром'
end