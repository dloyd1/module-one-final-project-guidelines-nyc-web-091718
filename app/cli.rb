require_relative '../config/environment.rb'
require_relative '../app/api.rb'
require 'pry'

def welcome
  puts "Welcome to Star Wars Trivia!"
end

def ask_question

#---------Question 1-----------#
puts "#{Question.all[0]}"
puts "The answer choices are:"
puts "A: #{Choice.all[0].answer}"
puts "B: #{Choice.all[0].choice1}"
puts "C: #{Choice.all[0].choice2}"
puts "D: #{Choice.all[0].choice2}"
answer = STDIN.gets.chomp.downcase
puts "The correct answer is #{Choice.all[0].answer}."
end
#---------Question 2-----------#



#---------Question 3-----------#




#---------Question 4-----------#




#---------Question 5-----------#




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
