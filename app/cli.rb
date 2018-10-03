def welcome
  puts "Welcome to Star Wars Trivia!"
end


# def get_category
#     puts "Please select from the following categories:
#      1. People, 2. Films, 3. Planets, 4. Starships, 5. Species.
#      Enter the number of the category below."
#      selection = STDIN.gets.chomp.downcase
# 
#   # use gets to capture the user's input.
#   #This method should return that input, downcased.
# end

def ask_question(selection)
  questions =
  10.times do |x|
    count = 1
  puts "Question number #{count}"
  puts x, questions[selection][rand([selection].size+1)]
end
count =+ 1
end
