puts "Привет, я твой дневник. Скажи мне что у тебя на уме и в душе?"
puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do
    line = STDIN.gets.encode("UTF-8").chomp
    all_lines << line
end

time = Time.now

file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")
separator = "-----------------------------"
file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")
file.print("\n\r" + time_string + "\n\r") 
all_lines.pop

for item in all_lines do
    file.puts(item)
end

file.puts(separator)
file.close

puts "Your notice is saved in a local file: #{file_name}.txt"