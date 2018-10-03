require 'rest-client'
require 'json'
require 'pry'

category_size = {"People" => 1, "Films" => 2, "Planets" => 3, "Starships" => 4, "Species" => 5}

def api #(character)
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people')
  response_hash = JSON.parse(response_string)
    # character_info = response_hash["results"].find do |c|
    #   c["name"].downcase == character
    #   end
    # if character_info != nil
    #   character_films = character_info["films"]
    #   character_films.map do |cf|
    #     res_string = RestClient.get(cf)
    #     res_hash = JSON.parse(res_string)
    #   end
    # else
    #   nil
    puts response_hash
    end

# end

def print_movies(films_hash)

  if films_hash != nil
    films_hash.each do |f|
      puts "*" * 25
      puts f["title"]
    end

  else
    puts "Please enter a valid name"
  end
  films_hash
  # some iteration magic and puts out the movies in a nice list
# binding.pry
end

def show_character_movies(character)
  films_array = get_character_movies_from_api(character)

end

def store_in_db()

end


## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
