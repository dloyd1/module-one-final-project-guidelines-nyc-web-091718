require 'rest-client'
require 'json'
require 'pry'


cat_array = ["People", "Films", "Planets", "Starships", "Species"]
xyz = "PlaceHolder"


def cat_count
  count_arr = []
  counter = 0
  #make the web request
  5.times do
  api_url = "http://www.swapi.co/api/people"
  # xyz = "#{api_url}#{cat_array[c]}"
  response_string = RestClient.get("http://www.swapi.co/api/people")
  response_hash = JSON.parse(response_string)
  count = response_hash["count"]
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
    count_arr << count
    counter = counter + 1
    end
count_arr
# binding.pry
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
