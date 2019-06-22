#first version 
class MovieOption
    
    def initialize
        @current_path = "./" + File.dirname(__FILE__) 
    end

    def read_file(file) 

    if File.exist?(file)

        f = File.new(file)
        lines = f.readlines
        f.close   
        
        description = [] 
        title = []
        merge = []
        i = 0   
        while i < lines.length do
            if i.odd?
                description << lines[i].strip
            end
            if i.even?
                title << lines[i].strip 
            end
            i += 1
        end   
        
        j = 0   
        while j < description.length do
            merge << title[j] + "\n\n" + description[j]
            j += 1
        end  

        puts "Сегодня Вам предлагается к просмотру фильм: #{merge.sample}" 
    else
        puts "File does not exist!"
    end

    end

    def current_path
        @current_path
    end
 
end
 
#second version


# class MovieOption
    
#     def initialize
#         @current_path = "./" + File.dirname(__FILE__) 
#     end

#     def read_file(file) 

#         if File.exist?(file)

#             f = File.new(file)
#             lines = f.readlines
#             f.close  
#             random_num = rand(lines.length - 1)
            
#             str = "" 
#             if random_num.even?
#                 str += lines[random_num] + lines[random_num+1] 
#             elsif random_num.odd?
#                 str += lines[random_num-1]  + lines[random_num]  

#             end

#             puts "Сегодня Вам предлагается к просмотру фильм: #{str}" 
#         else
#             puts "File does not exist!"
#         end

#     end

#     def current_path
#         @current_path
#     end
 
# end

movie_to_watch = MovieOption.new
movie_file_name = movie_to_watch.current_path + "/films.txt" 
movie_to_watch.read_file(movie_file_name)