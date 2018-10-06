require_relative '../config/environment.rb'
require_relative '../app/api.rb'
solutions
#-------------------Data Input----------------#
categories = ["Characters", "Films", "Planets", "Starships", "Species"]

category_objects = [87, 7, 61, 37, 37]

qcat_array = [["What planet does this character call home?", "Characters"],
              ["Which film debuted in theaters first?", "Films"],
              ["Of the below planets, which is the largest?", "Planets"],
              ["On average, which of the following species is shortest?","Species"],
              ["Of the following starships, which one requires the the most people to operate?", "Starships"],
              ["Which character is the tallest?", "Characters"],
              ["Which film debuted in theaters last?", "Films"],
              ["Of the planets below, which one has the biggest population?", "Planets"],
              ["Which of the following Starships is the largest?", "Starships"],
              ["On what planet does the species primarily live?", "Species"]]

questions_hash = {
                  "Characters" => ["Q1","Q6"],
                  "Films" =>  ["Q2", "Q7"],
                  "Planets" => ["Q3","Q8"],
                  "Starships" => ["Q4","Q9"],
                  "Species" => ["Q5","Q10"]}

# q_subs = q_subjects
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
def create_choices
#----------Question 1------------#

    Choice.create(
      answer: $sol_arr[1],
      choice1: $titles[0],
      choice2: $titles[1],
      choice3: $titles[2])

#----------Question 2------------#

    Choice.create(
      answer: $sol_arr[2],
      choice1: $name1[0],
      choice2: $name1[1],
      choice3: $name1[2])

#----------Question 3------------#

    Choice.create(
      answer: $sol_arr[3],
      choice1: $name3[0],
      choice2: $name3[1],
      choice3: $name3[2])

#----------Question 4------------#

    Choice.create(
      answer: $sol_arr[4],
      choice1: $ship[0],
      choice2: $ship[1],
      choice3: $ship[2])

#----------Question 5------------#

    Choice.create(
      answer: $sol_arr[5],
      choice1: $name[0],
      choice2: $name[1],
      choice3: $name[2])

#----------Question 6------------#

      Choice.create(
        answer: $sol_arr[6],
        choice1: $titles2[0],
        choice2: $titles2[1],
        choice3: $titles2[2])

#----------Question 7------------#

     Choice.create(
       answer: $sol_arr[7],
       choice1: $name2[0],
       choice2: $name2[1],
       choice3: $name2[2])

#----------Question 8------------#

      Choice.create(
        answer: $sol_arr[8],
        choice1: $bigship[0],
        choice2: $bigship[1],
        choice3: $bigship[2])
end
create_choices



#-------------------Creating Qcs--------------------------#
# def create_qcs
#   counter = 0
#   Choice.create(
#     question_id:
#     choice_id:
#     )
# end




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
