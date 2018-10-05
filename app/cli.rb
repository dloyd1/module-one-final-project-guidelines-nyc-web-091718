require_relative '../config/environment.rb'
require_relative '../app/api.rb'
require 'pry'

def welcome
  puts "Welcome to Star Wars Trivia!"
  puts "----------------------------"
end

def ask_question

#---------Question 1-----------#
puts "#{Question.all[1].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[1].answer}"
puts "B: #{Choice.all[1].choice1}"
puts "C: #{Choice.all[1].choice2}"
puts "D: #{Choice.all[1].choice3}"
answer = STDIN.gets.chomp.downcase
puts "----------------------------"
puts "The correct answer is #{Choice.all[1].answer}."
puts "                            "

#---------Question 2-----------#
puts "#{Question.all[2].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[2].answer}"
puts "B: #{Choice.all[2].choice1}"
puts "C: #{Choice.all[2].choice2}"
puts "D: #{Choice.all[2].choice3}"
answer = STDIN.gets.chomp.downcase
puts "----------------------------"
puts "The correct answer is #{Choice.all[2].answer}."
puts "                            "

#---------Question 3-----------#
puts "#{Question.all[4].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[4].answer}"
puts "B: #{Choice.all[4].choice1}"
puts "C: #{Choice.all[4].choice2}"
puts "D: #{Choice.all[4].choice3}"
answer = STDIN.gets.chomp.downcase
puts "----------------------------"
puts "The correct answer is #{Choice.all[4].answer}."
puts "                            "

#---------Question 4-----------#
puts "#{Question.all[3].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[3].answer}"
puts "B: #{Choice.all[3].choice1}"
puts "C: #{Choice.all[3].choice2}"
puts "D: #{Choice.all[3].choice3}"
answer = STDIN.gets.chomp.downcase
puts "----------------------------"
puts "The correct answer is #{Choice.all[3].answer}."
puts "                            "

#---------Question 5-----------#
puts "#{Question.all[8]}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[8].answer}"
puts "B: #{Choice.all[8].choice1}"
puts "C: #{Choice.all[8].choice2}"
puts "D: #{Choice.all[8].choice3}"
answer = STDIN.gets.chomp.downcase
puts "----------------------------"
puts "The correct answer is #{Choice.all[8].answer}."
puts "                            "

end #end of method



#---------Question 6-----------#




#---------Question 7-----------#




#---------Question 8-----------#




#---------Question 9-----------#




#---------Question 10-----------#














#end #end of ask method


# def get_answer
#     puts "Please input your answer."
#      selection = STDIN.gets.chomp.downcase
#
#   # use gets to capture the user's input.
#   #This method should return that input, downcased.
# end
#
# def ask_question(selection)
#   questions =
#   10.times do |x|
#     count = 1
#   puts "Question number #{count}"
#   puts x, questions[selection][rand([selection].size+1)]
# end
# count =+ 1
# end
