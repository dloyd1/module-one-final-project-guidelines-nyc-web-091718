class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :answer
    end
  end
end
