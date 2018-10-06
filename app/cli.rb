require_relative '../config/environment.rb'
require_relative '../app/api.rb'
require 'pry'

def welcome
  puts "Welcome to Star Wars Trivia!"
  puts "----------------------------"
end

def ask_question

#Q1: Film Release--------------------#

puts "Question 1: #{Question.all[1].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[0].answer}"
puts "B: #{Choice.all[0].choice1}"
puts "C: #{Choice.all[0].choice2}"
puts "D: #{Choice.all[0].choice3}"
answer = STDIN.gets.chomp.downcase
puts "                           "
puts "The correct answer is #{Choice.all[0].answer}."
puts "----------------------------"

#Q2: Largest Planet-----------------#

puts "Question 2: #{Question.all[2].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[1].answer}"
puts "B: #{Choice.all[1].choice1}"
puts "C: #{Choice.all[1].choice2}"
puts "D: #{Choice.all[1].choice3}"
answer = STDIN.gets.chomp.downcase
puts "                           "
puts "The correct answer is #{Choice.all[1].answer}."
puts "----------------------------"

#Q3: Shortest Species---------------#

puts "Question 3: #{Question.all[3].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[2].answer}"
puts "B: #{Choice.all[2].choice1}"
puts "C: #{Choice.all[2].choice2}"
puts "D: #{Choice.all[2].choice3}"
answer = STDIN.gets.chomp.downcase
puts "                           "
puts "The correct answer is #{Choice.all[2].answer}."
puts "----------------------------"

#Q4: Starship Crew-----------#

puts "Question 4: #{Question.all[4].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[3].answer}"
puts "B: #{Choice.all[3].choice1}"
puts "C: #{Choice.all[3].choice2}"
puts "D: #{Choice.all[3].choice3}"
answer = STDIN.gets.chomp.downcase
puts "                           "
puts "The correct answer is #{Choice.all[3].answer}."
puts "----------------------------"

#Q5: Tallest Character---------------#

puts "Question 5: #{Question.all[5].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[4].answer}"
puts "B: #{Choice.all[4].choice1}"
puts "C: #{Choice.all[4].choice2}"
puts "D: #{Choice.all[4].choice3}"
answer = STDIN.gets.chomp.downcase
puts "                           "
puts "The correct answer is #{Choice.all[4].answer}."
puts "----------------------------"

#Q6: File Release Last---------------#

puts "Question 6: #{Question.all[6].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[5].answer}"
puts "B: #{Choice.all[5].choice1}"
puts "C: #{Choice.all[5].choice2}"
puts "D: #{Choice.all[5].choice3}"
answer = STDIN.gets.chomp.downcase
puts "                           "
puts "The correct answer is #{Choice.all[5].answer}."
puts "----------------------------"

#Q7: Planet Population---------------#

puts "Question 7: #{Question.all[7].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[6].answer}"
puts "B: #{Choice.all[6].choice1}"
puts "C: #{Choice.all[6].choice2}"
puts "D: #{Choice.all[6].choice3}"
answer = STDIN.gets.chomp.downcase
puts "                           "
puts "The correct answer is #{Choice.all[6].answer}."
puts "----------------------------"

#Q8: Ship Largest---------------#

puts "Question 8: #{Question.all[8].question_text}"
puts "----------------------------"
puts "The answer choices are:"
puts "A: #{Choice.all[7].answer}"
puts "B: #{Choice.all[7].choice1}"
puts "C: #{Choice.all[7].choice2}"
puts "D: #{Choice.all[7].choice3}"
answer = STDIN.gets.chomp.downcase
puts "                           "
puts "The correct answer is #{Choice.all[7].answer}."
puts "----------------------------"










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
