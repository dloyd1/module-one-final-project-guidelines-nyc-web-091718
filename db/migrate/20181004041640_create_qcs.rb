class CreateQcs < ActiveRecord::Migration[5.0]
  def change
    create_table :qcs do |t|
      t.integer :question_id
      t.integer :choice_id
    end
  end
end
