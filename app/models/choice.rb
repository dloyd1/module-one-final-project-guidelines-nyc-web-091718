class Choice < ActiveRecord::Base

has_many :questions, through: :qcs

end #end of class
