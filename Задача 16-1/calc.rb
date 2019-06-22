def calc() 
    
    puts "Первое число:"
    num_1 = gets.chomp.to_i
    puts "Второе число:"
    num_2 = gets.chomp.to_i
    puts "Выберите операцию (+ - * /):"
    operation = gets.chomp.to_s

    if operation == "+"
        return num_1 + num_2
    elsif operation == "*"
        return num_1 * num_2
    elsif operation == "-"
        return num_1 - num_2
       
    elsif operation == "/"
        begin     
        return num_1 / num_2
        rescue => error
           puts "На ноль делить нельзя"
        end    
    else
        puts "This is an unknown operation"        
    end 

end


puts calc()