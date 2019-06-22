require "./movies.rb"
 

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

puts "И сегодня вечером рекомендую посмотреть " + titles.sample.title
puts "Режиссера: " + movie.director     
 




