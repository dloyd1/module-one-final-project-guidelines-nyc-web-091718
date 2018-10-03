require_relative '../config/environment'
require_all 'app'
 categories = ["People", "Films", "Planets", "Starships", "Species"]
 # questions = {"People" => "Q1", "People" => "Q2",
 #              "Films" => "Q3", "Films" => "Q4",
 #              "Planets" => "Q5", "Planets" => "Q6",
 #              "Starships" => "Q7", "Starships" => "Q8",
 #              "Species" => "Q10", "Species" => "Q9"}


counter = 0
5.times do
Category.create(
  category_name: "#{categories[counter]}")
counter = counter + 1
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
