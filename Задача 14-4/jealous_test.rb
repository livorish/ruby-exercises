# encoding: utf-8
# Тест взят http://www.syntone.ru/library/psytests/content/4786.html

version = "Тест \"Ревнивы ли вы\". Версия 0.6. \n\n"

def file_result(file)
  directory = File.dirname(__FILE__)
  path_name = directory + file

  if File.exist? path_name
    f = File.new(path_name);
    lines = f.readlines
    return lines
  else
    return "File does not exist"
  end
end

  
# первый аргумент командной строки - имя пользователя, проходящего тест или "-v"
name = ARGV[0]

if (Gem.win_platform? and ARGV[0])
    name = name.encode(ARGV[0].encoding, "cp1251").encode("UTF-8") #.encode("UTF-8")
end


# пользователь может забыть передать аргумент, но как-то мы должны к нему обратиться
if name == nil  
  name = "Таинственная Персона" # пусть будет с таким прозвищем :)  
elsif name == "-v" # если пользователь только хочет проверить что программа работает
  puts version     # выводим информацию о программе
  exit             # и выходим из программы
end

# приветствуем пользователя (надо же нам его расположить к себе, чтобы он честно отвечал на вопросы :)
puts "Добрый день, #{name}! Ответьте пожалуйста честно на несколько вопросов, чтобы узнать кое-что о себе."

# Конструкция вида #{...} внутри строки это другой способ вставить значение переменной в строку.
#
#   "Bla-bla-bla #{name} бла-бла" 
#
# равнозначно записи:   
#
#   "Bla-bla-bla " + name + " бла-бла" 



# объявили переменную, хранящую кол-во ответов "да" на вопросы теста и задали начальное значение - ноль
yes_answers = 0
arr_questions = file_result('/questions.txt')
# цикл по массиву questions - каждый элемент записывается в специальную переменную item,
# которой мы и пользуемся в цикле
for item in arr_questions do
  puts item # вывели на экран след. вопрос

  # переменная, куда будет сохраняться ответ пользователя, прочитанный из консоли
  user_input = nil

  #  цикл повторяющий просьбу ввести ответ до тех пор, пока не будет введен правильный ответ
  until (user_input == "yes" or user_input == "no")
    puts "введите 'yes' или 'no' и нажмите Enter"

    # результат, считанный с консоли методом 'gets', избавляем от перевода строки в конце методом
    # 'chomp' и сразу приводим в нижний регистр методом 'downcase'
    #
    # Цепочка методов  gets -> chomp -> downcase выполняется слева направо и результат последнего
    # метода возвращается в переменную uset_input
    #
    # Это эквивалентно:
    #   input = gets
    #   input_no_endline = input.chomp
    #   user_input = input_no_endline.downcase
    #
    user_input = STDIN.gets.chomp.downcase
  end

  if (user_input == "yes")
    yes_answers += 1 # увеличиваем значение переменной на единицу
  end
end # конец цикла по вопросам массива

# выводим ответы на тест в зависимости от результатов ответов
puts "\n#{name}"

puts "\nВаш результат теста (ответов 'да' - #{yes_answers}):"

def result(answers, arr) 
  if (answers >= 10)
    puts arr[0]
  elsif (answers >=5)
    puts arr[1]
  else
    puts arr[2]
  end 
end 

arr_res = file_result('/results.txt')
puts result(yes_answers, arr_res) 



