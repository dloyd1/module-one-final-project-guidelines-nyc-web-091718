require_relative '../config/environment'
require_all 'app'

Category.create(
  category_name: "",
  question_bank: "",
  category_count: "",
  people_height: "",
  people_homeworld: "",
  people_films: "",
  people_species: "",
  people_name: "",
  films_release_date: "",
  films_director: "",
  films_characters: "",
  films_opening: "",
  planet_climate: "",
  planet_diameter: "",
  starships_films: "",
  starships_speed: "",
  starships_pilots: "",
  species_life: "",
  species_homeworld: "",
  species_language:)

Category.create(people_name: "Test")

# , question_bank: "Q2"
