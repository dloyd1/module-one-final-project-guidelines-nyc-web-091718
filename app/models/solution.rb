class Solution < ActiveRecord::Base

has_many :categories, through: :questions

end #end of Solution class