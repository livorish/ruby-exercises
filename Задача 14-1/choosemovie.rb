class MovieOption
    
    def initialize
        @current_path = "./" + File.dirname(__FILE__) 
    end

    def read_file(file) 

    if File.exist?(file)

        f = File.new(file)
        lines = f.readlines
        f.close
        puts "Сегодня Вам предлагается к просмотру фильм: #{lines.sample}"
    else
        puts "File does not exist!"
    end

    end

    def current_path
        @current_path
    end
 
end
 
movie_to_watch = MovieOption.new
movie_file_name = movie_to_watch.current_path + "/movies.txt" 
movie_to_watch.read_file(movie_file_name)