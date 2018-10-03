class CreateSolutions < ActiveRecord::Migration[5.0]
  def change
    create_table :solutions do |t|
      t.string :category_name
      t.string :question_bank
      t.integer :category_count
      t.integer :people_height
      t.string :people_homeworld
      t.string :people_films
      t.string :people_species
      t.string :people_name
      t.date :films_release_date
      t.string :films_director
      t.string :films_characters
      t.string :films_opening
      t.string :planet_climate
      t.integer :planet_diameter
      t.string :starships_films
      t.integer :starships_speed
      t.string :starships_pilots
      t.integer :species_life
      t.string :species_homeworld
      t.string :species_language
    end
  end #end of method
end #end of class
