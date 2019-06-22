def get_holiday(file)

    dir_path = File.dirname(__FILE__)
    file_name = dir_path + "/" + file 

    begin
        f = File.new(file_name, "r:UTF-8")
        lines = f.readlines 
        f.close

        arr_of_date = []
        for item in lines
            arr_of_date << item.chomp!
        end 

        return arr_of_date

    rescue => exception
        return "File does not exist"
    end 
         
end
 

def is_it_holiday()

    time = Time.new

    time_formate_date = time.strftime("%d.%m")
    
    holiday = get_holiday('holidays.txt')  

    message = ""
 
    if holiday.include?(time_formate_date)
        message = "Сегодня государственный праздник"
    elsif time.wday == 0 || time.wday == 6
        message = "Сегодня выходной!"
    else
        message = "Сегодня будний день, за работу!"
    end

    return message
end

puts is_it_holiday()