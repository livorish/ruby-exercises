current_path = File.dirname(__FILE__)
puts "Enter any file name"

user_input = gets.chomp 
path = "/files/"
file_path = current_path + path + user_input


if File.exist? file_path

    f = File.new(file_path)
    lines = f.readlines 
    f.close
    len =  lines.size
    arr = []
    i = 0
    counter = 0

    while len > i do
        if counter <= 5
            arr << lines[len]
        else
            break
        end 
        len -= 1 
        counter += 1
    end

    puts arr.reverse
    
else 
    puts "File not found"    

end