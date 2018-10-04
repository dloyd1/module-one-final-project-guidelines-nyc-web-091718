require_relative '../config/environment.rb'
require_relative '../app/api.rb'


#-------------------Data Input----------------#
categories = ["Characters", "Films", "Planets", "Starships", "Species"]

category_objects = [87, 7, 61, 37, 37]

qcat_array = [["What planet does this character call home?", "Characters"],
              ["Which film debuted in theaters first?", "Films"],
              ["Of the below planets, which is the largest?", "Planets"],
              ["On average, which of the following species is tallest?","Species"]
              ["Of the following starships, which one requires the the most people to operate?", "Starships"],
              ["Which character is the tallest?", "Characters"],
              ["Chronologically, which film takes places last?", "Films"],
              ["Of the planets below, which one has the biggest population?", "Planets"],
              ["Which of the following Starships is the largest?", "Starships"],
              ["On what planet does this species primarily live?", "Species"]]

questions_hash = {
                  "Characters" => ["Q1","Q6"],
                  "Films" =>  ["Q2", "Q7"],
                  "Planets" => ["Q3","Q8"],
                  "Starships" => ["Q4","Q9"],
                  "Species" => ["Q5","Q10"]}

q_subs = q_subjects
#-----------------Creating Questions-----------------#


def create_questions(qcat_array)
counter = 0
10.times do
Question.create(
  question_text: qcat_array[counter][0],
  category: qcat_array[counter][1]
)
counter = counter + 1
end
end

create_questions(qcat_array)

#--------------------Creating Choices-------------------#

def create_choices(q_subs)



end
binding.pry




#-------------------Creating Qcs--------------------------#





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
