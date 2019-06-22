def calc() 
    
    puts "Первое число:"
    num_1 = gets.chomp.to_f
    puts "Второе число:"
    num_2 = gets.chomp.to_f
    puts "Выберите операцию (+ - * /):"
    operation = gets.chomp.to_s

    puts "Результат:"
    if operation == "+"
        return num_1 + num_2
    elsif operation == "*"
        return num_1 * num_2
    elsif operation == "-"
        return num_1 - num_2
    elsif operation == "/" 
      return num_1 / num_2  
    else
        puts "This is an unknown operation"        
    end 

end


puts calc()