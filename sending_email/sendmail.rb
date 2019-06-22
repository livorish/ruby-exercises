require "pony"
require "io/console"
require "cyrillizer"
Cyrillizer.language = :russian

my_mail = "julianverus@mail.ru"

password = "L9(&%D52!)-7k+^4c$d(*m"


puts "Кому отправить письмо?"
send_to = STDIN.gets.chomp

puts "Какая тема письма?"
subject_line = STDIN.gets.chomp.to_lat


puts "Что написать в письме?"
body = STDIN.gets.chomp

Pony.mail({
    :subject => subject_line,
    :body => body,
    :to => send_to,
    :from => my_mail,
    :via => :smtp,
    :charset => "UTF-8",
    :via_options => {
      :address => 'smtp.mail.ru',
      :port => '465',
      :tls => true,
      :user_name => my_mail,
      :password => password,
      :authentication => :plain
    }
  })

  puts "Succesful!"