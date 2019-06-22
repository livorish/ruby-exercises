puts "Введите email: "

#Общий формат таков: XXXXX@XXXXX.XX
pattern =  /^[a-z0-9\-\.]+\@[a-z0-9]+\.[a-z]+/i

user_email = gets.chomp

if user_email =~ pattern
    puts "Спасибо!"
else
    puts "Это не email"
end