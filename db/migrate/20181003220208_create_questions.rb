class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :category
    end
  end #end of method
end #end of class
