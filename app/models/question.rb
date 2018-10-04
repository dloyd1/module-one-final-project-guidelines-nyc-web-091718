class Question < ActiveRecord::Base

has_many :choices, through: :qcs

end
