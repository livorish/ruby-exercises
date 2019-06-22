directory = "./" + File.dirname(__FILE__)

  
i = 0
arr = [] 
while i < 4 do
    file_name = directory + "/#{i}.txt"
    if File.exist? file_name
        f = File.new(file_name) 
        arr << f.readlines 
        i += 1
        f.close
    else 
        puts "File does not exist"
    end
end

arr.map{ |x| puts x[rand(7)] }

 