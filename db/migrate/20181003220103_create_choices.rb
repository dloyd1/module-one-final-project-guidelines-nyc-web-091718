class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.string :choice_1
      t.string :choice_2
      t.string :choice_3
      t.string :answer
    end
  end #end of method
end #end of class
