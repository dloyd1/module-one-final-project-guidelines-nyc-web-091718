require_relative '../config/environment.rb'
require_relative '../app/api.rb'


def welcome
  puts "Welcome to Star Wars Trivia!"
end

def ask_question
    puts "#{Question.all[1].question_text.to_s}"
    puts "A. "
    puts  "B."
    puts  "C "
    puts   "D "
end #end of ask method


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
