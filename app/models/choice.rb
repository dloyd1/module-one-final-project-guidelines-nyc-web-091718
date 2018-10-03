class Choice < ActiveRecord::Base

has_many :questions, through: :question_choices

end #end of Solution class
