puts "Врага какого персонажа вы хотите узнать?"
puts "Бэтмен, Шерлок Холмс, Мишонн, Красная Шапочка, Фродо Бэггинс, Марио, Заяц, Алиса"
 
user_input = gets.chomp.encode("UTF-8") 

case user_input
  when "бэтмен", "batman", "Бэтмен", "Batman" 
    puts "Джокер"
  when "шерлок холмс", "Sherlock Holmes", "Шерлок Холмс" , "sherlock holmes"
    puts "Профессор Мориарти"
  when "Мишонн", "Michonne", "мишонн", "michonne"
    puts "Губернатор"  
  when "Красная Шапочка", "red", "красная шапочка", "Red"
    puts "Губернатор"  
  when "Алиса", "Alice", "алиса", "alice"
    puts "Червонная Королева"
  when "Фродо Бэггинс", "Frodo Baggins", "фродо бэггинс", "frodo baggins"
    puts "Саурон"
  when "Марио", "mario", "марио", "Mario"
    puts "Донки Конг"
  when "заяц", "Rabbit", "Заяц", "rabbit"
    puts "Волк"            
  else
    puts "Не удалось найти врага"
end  