require_relative '../config/environment.rb'
require_relative '../app/api.rb'

categories = ["People", "Films", "Planets", "Starships", "Species"]

category_objects = [87, 7, 61, 37, 37]

qcat_array = [["1", "People"], ["2", "People"],
             ["3", "Films"], ["4", "Films"],
             ["5", "Planets"], ["6", "Planets"],
             ["7", "Starships"], ["8", "Starships"],
             ["9", "Species"], ["10","Species" ]]

questions_hash = {"People" => ["Q1","Q6"],
                  "Films" =>  ["Q2", "Q7"],
                  "Planets" => ["Q3","Q8"],
                  "Starships" => ["Q4","Q9"],
                  "Species" => ["Q5","Q10"]}

# count_arr = cat_count
# counter = 0
# counter1 = 0
# 2.times do


counter = 0
10.times do
Question.create(
  question_text: question_hash[counter][0],
  category: question_hash[counter][1]
)
counter = counter + 1
end


#
# 5.times do
# Category.create(
#   category_name: "#{categories[counter]}",
#   objects: count_arr[counter])
# counter = counter + 1
# end
# counter1 = counter1 + 1
# end
#
# Solution.create(
#
# )
#
# Question.create(
#   solution_id:
#   category_id: )
# end
