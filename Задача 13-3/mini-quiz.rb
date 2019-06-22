file_first =  './answers.txt'
file_second = './questions.txt'

if File.exist?(file_first) && File.exist?(file_second) 

   f1 = File.new(file_first)
   f2 = File.new(file_second)

   answers = []
   questions = []

   # for answers
   f1.each do |line|
        answers << line.strip
   end

   # for questions 
   f2.each do |line|
    questions << line.strip
   end 

   f1.close
   f2.close

   user_answ = nil
   counter = 0 
   i = 0

   while i < questions.length do

        puts questions[i]   
        user_answ = gets.chomp 

        while user_answ == nil or user_answ == ""
            puts questions[i]  
            user_answ = gets.chomp
        end

        if user_answ == answers[i].strip
            counter += 1
            puts "Верный ответ!"
        else 
            puts "Неправильно. Правильный ответ: " + answers[i]
        end

        i += 1     
    end

else 
    puts "File or files do not exists!"

end

puts "У вас #{counter} правильных ответов из #{questions.length}"
