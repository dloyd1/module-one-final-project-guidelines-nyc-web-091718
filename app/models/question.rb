class Question < ActiveRecord::Base

has_many :choices, through: :question_choices

end
