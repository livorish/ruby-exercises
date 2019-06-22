def get_word(file)

    current_path = File.dirname(__FILE__)
    file_path = current_path + "/" + file

    begin
        f = File.new(file_path, "r:UTF-8")
        lines = f.readlines.to_s
        f.close

        extra = /[\,\s\.\-\:\(\(\!\?\"\']+[\s]*/i
        find_garbage = lines.split(extra)
        
        pattern = /^[А-Яа-я]{3}$/i
        count = 0
        for item in find_garbage
            if pattern =~ item
                count += 1 
                puts item
            end
        end
        puts "Общее количество трехбуквенных слов: " + count.to_s
    rescue => exception
        puts "File does not exist"
    end

    

end

 
get_word('words.txt')