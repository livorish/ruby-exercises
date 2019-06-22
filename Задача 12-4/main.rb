# encoding: utf-8

# На основе теста http://www.syntone.ru/library/psytests/content/4969.html
require "./result.rb"
require "./test.rb" 
require "./questions.rb" 


test  = TestSociability.new
questions = Questions.new
res = Results.new
test.ask_question(questions.ques)
puts "\n\nРезультат теста (всего баллов - #{test.points}):"
res.get_result(test.points)


