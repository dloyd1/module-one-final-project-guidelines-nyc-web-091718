require_relative '../config/environment'
require_all 'app'
categories = ["People", "Films", "Planets", "Starships", "Species"]
category_objects = [87, 7, 61, 37, 37]

 # questions = {"People" => "Q1", "People" => "Q2",
 #              "Films" => "Q3", "Films" => "Q4",
 #              "Planets" => "Q5", "Planets" => "Q6",
 #              "Starships" => "Q7", "Starships" => "Q8",
 #              "Species" => "Q10", "Species" => "Q9"}


counter = 0
# counter1 = 0
# 2.times do
5.times do
Category.create(
  category_name: "#{categories[counter]}",
  objects: "#{category_objects[counter]}".to_i)

counter = counter + 1
end
# counter1 = counter1 + 1
# end

Solution.create(

)

Question.create(
  solution_id:
  category_id: )
end




# Category.create(
#   category_name: "Films",
#   question_bank: ["", ""],
#   category_count: "",
# )
#
# Category.create(
#   category_name: "Planets",
#   question_bank: ["", ""],
#   category_count: "",
# )
#
# Category.create(
#   category_name: "Species",
#   question_bank: ["", ""],
#   category_count: ["", ""],
# )
#
# Category.create(
#   category_name: "Starships",
#   question_bank: "",
#   category_count: "",
# )

# , question_bank: "Q2"
