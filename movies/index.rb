require "./movies.rb"
require "./moveandp.rb"



puts "Фильмы какого режиссера вы хотите посмотреть?"

director = gets.encode("UTF-8").chomp
titles = []
i = 1

while i < 4 do
    puts "Какой-нибудь его хороший фильм?"
    movie_title = gets.encode("UTF-8").chomp
    movie = Movie.new(movie_title, director) 
    titles << movie
    i += 1
end

human_one = Human.new("Клифорд", "Стоун", titles.sample.title)
 
puts human_one.return_name.to_s + " " + human_one.return_surname.to_s
puts "с любимым фильмом: " + human_one.return_movie