require 'rest-client'
require 'json'
require 'pry'


cat_array1 = ["People", "Films", "Planets", "Starships", "Species"]

xyz = "PlaceHolder"


def cat_count
  count_arr = []
  counter = 0
  cat_array1 = ["People", "Films", "Planets", "Starships", "Species"]
  #make the web request
    5.times do
    # api_url = "http://www.swapi.co/api/people"
    x = cat_array1[0]

    cat_array = ["http://www.swapi.co/api/people", "http://www.swapi.co/api/films",
                 "http://www.swapi.co/api/planets", "http://www.swapi.co/api/starships",
                 "http://www.swapi.co/api/species"]
    # xyz = cat_array1[counter]
    response_string = RestClient.get(cat_array[counter])
    response_hash = JSON.parse(response_string)
    count = response_hash["count"]
    count_arr << count
    # #-----------------------------------------
    # response_string = RestClient.get("http://www.swapi.co/api/films")
    # response_hash = JSON.parse(response_string)
    # count = response_hash["count"]
    # count_arr << count
    # #-----------------------------------------
    # response_string = RestClient.get("http://www.swapi.co/api/planets")
    # response_hash = JSON.parse(response_string)
    # count = response_hash["count"]
    # count_arr << count
    # #-----------------------------------------
    # response_string = RestClient.get("http://www.swapi.co/api/starships")
    # response_hash = JSON.parse(response_string)
    # count = response_hash["count"]
    # count_arr << count
    # #-----------------------------------------
    # response_string = RestClient.get("http://www.swapi.co/api/species")
    # response_hash = JSON.parse(response_string)
    # count = response_hash["count"]
    # count_arr << count
    counter = counter + 1
    end
count_arr
end
# end

count_arr = cat_count

# def films
#   date_arr = []
#   counter = 0
#   7.times do
#   response_string = RestClient.get("http://www.swapi.co/api/films")
#   response_hash = JSON.parse(response_string)
#   date = response_hash["results"][counter]["release_date"]
#   title = response_hash["results"][counter]["title"]
#   film data = {} << {title  => date}
#   counter = counter + 1
#   end
#   film_data
# end

# date_arr = films


# binding.pry
