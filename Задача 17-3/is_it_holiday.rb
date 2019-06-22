def add_holiday(index, days)
    month = Array.new  
    i = 0 
     
    while i < index.length do  
        ind = index[i]
        month[ind] = days[i] 
    i += 1     
    end  

    return month
end


def is_it_holiday

    t = Time.new  
     
    index = [1, 2, 3, 5, 6, 11]
    days = [[1, 2, 3, 4, 5, 6, 7, 8], [23], [8], [1, 9], [12], [4]]
    month = add_holiday(index, days)
     
    i = 0 
     
    while i < month.length do
       
        if month[i] != nil 
            if t.month == i && month[i].include?(t.day) 
                return "Сегодня государственный праздник" 
            end 
        end
        i += 1
    end 

    if (1..5).to_a.include?(t.wday)     
        return "Сегодня будний день, за работу!"    
    else
        return "Сегодня выходной!"     
    end
 
end
puts is_it_holiday