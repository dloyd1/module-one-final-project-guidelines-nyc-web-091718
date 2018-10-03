class CreateQuestionChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :question_choices do |t|
      t.integer :question_id
      t.integer :choice_id
    end
  end #end of method
end #end of class
