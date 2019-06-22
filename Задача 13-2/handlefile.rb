 
file_name = ARGV[0]

if File.exist?(file_name) && file_name != nil

    f = File.new(file_name)
    lines = f.readlines
    f.close

    i = 0
    empty_str = 0 
    while i < lines.length do
        if lines[i].strip  == "" 
            empty_str += 1    
        end
        i += 1
    end
    puts "Открываем файл: " + file_name
    puts "Всего строк: " + lines.length.to_s
    puts "Пустых строк: " + empty_str.to_s
else
    puts "File doesn't exist!"
end