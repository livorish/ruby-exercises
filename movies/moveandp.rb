class Human

    def initialize(name, surname, favorite_movie)
      @age = rand(200) + 1
      @name = name
      @surname = surname
      @favorite_movie = favorite_movie
    end
  
    def return_age
      return @age
    end
  
    def return_name
      return @name
    end
  
    def return_surname
      return @surname
    end

    def add_movie(mov)
        @favorite_movie = mov
    end    

    def return_movie
        return @favorite_movie
    end
     
  end
  