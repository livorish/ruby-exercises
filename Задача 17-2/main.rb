# encoding: utf-8

 
#Поправьте программу 14-3 так, чтобы она рисовала рожицу в файл, причём, кажды раз в новый:
# название файла должно состоять из строчки "face", даты и текущего времени.

foreheads = []
eyes = []
noses = []
mouths = []

# Обратите внимание, что файлы нужно создавать в той же папке, в которой вы запускаете программу

if File.exist?('./foreheads.txt') # проверяем есть ли файл со лбами
  f = File.new('./foreheads.txt', "r:UTF-8") # открываем файл, явно указывая его кодировку
  foreheads = f.readlines   # читаем все строки в массив
  f.close # закрываем файл
else
  puts 'Лбы не найдены'
end

if File.exist?('./eyes.txt') # проверяем есть ли файл с глазами
  f = File.new('./eyes.txt', "r:UTF-8")
  eyes = f.readlines
  f.close
else
  puts 'Глаза не найдены'
end

if File.exist?('./noses.txt') # проверяем есть ли файл с носами
  f = File.new('./noses.txt', "r:UTF-8")
  noses = f.readlines
  f.close
else
  puts 'Носы не найдены'
end

if File.exist?('./mouths.txt') # проверяем есть ли файл со ртами
  f = File.new('./mouths.txt', "r:UTF-8")
  mouths = f.readlines
  f.close
else
  puts 'Рты не найдены'
end


# Рисуем уникальную рожицу
current_directive = File.dirname(__FILE__) 
time = Time.now
full_date = time.strftime("%d.%m.%Y")
hours_and_min = time.strftime("%H:%M") 
file = File.new(current_directive + "/" + "face" + " " + full_date  + " " + hours_and_min + "txt", "w:UTF-8")
file.puts(foreheads.sample) 
file.puts(eyes.sample)
file.puts(noses.sample)
file.puts(mouths.sample)
file.close 

