require_relative '../config/environment.rb'
require_relative '../app/api.rb'
categories = ["People", "Films", "Planets", "Starships", "Species"]
category_objects = [87, 7, 61, 37, 37]
questions = [["1", "People"], ["2", "People"], ["3", "Films"], ["4", "Films"],
             ["5", "Planets"], ["6", "Planets"], ["7", "Starships"], ["8", "Starships"],
             ["9", "Species"], ["10","Species" ]]

 # questions = {"People" => "Q1", "People" => "Q2",
 #              "Films" => "Q3", "Films" => "Q4",
 #              "Planets" => "Q5", "Planets" => "Q6",
 #              "Starships" => "Q7", "Starships" => "Q8",
 #              "Species" => "Q10", "Species" => "Q9"}

# count_arr = cat_count
# counter = 0
# counter1 = 0
# 2.times do


counter = 0
10.times do
Question.create(
  question_text: questions[counter][0],
  category: questions[counter][1]
)
counter = counter + 1
end



# 5.times do
# Category.create(
#   category_name: "#{categories[counter]}",
#   objects: count_arr[counter])
# counter = counter + 1
# end
# counter1 = counter1 + 1
# end

# Solution.create(
#
# )
#
# Question.create(
#   solution_id:
#   category_id: )
# end
