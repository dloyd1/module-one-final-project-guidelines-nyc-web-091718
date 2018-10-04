require 'rest-client'
require 'json'
require 'pry'

#--------------Count the number of instances in each category------------------#
def cat_count
  total_arr = []
  counter = 0
  #cat_array1 = ["Characters", "Films", "Planets", "Starships", "Species"]

    5.times do
    #x = cat_array1[0]
    url_array = ["http://www.swapi.co/api/people", "http://www.swapi.co/api/films",
                 "http://www.swapi.co/api/planets", "http://www.swapi.co/api/starships",
                 "http://www.swapi.co/api/species"]
    response_string = RestClient.get(url_array[counter])
    response_hash = JSON.parse(response_string)
    total = response_hash["count"]
    total_arr << total
    counter = counter + 1
    end
    total_arr
end

total_arr = cat_count.fill(32, 3..3)

#--------------Randomly select two instances for each category-----------------#


def rand_numbers(total_arr)
  num_arr = []
  2.times do
    counter = 0
    5.times do
      num = rand(1..total_arr[counter])
      num_arr << num
      counter = counter + 1
    end
    num_arr
  end
  num_arr
end

randnums = rand_numbers(total_arr)

#--------------Randomly select two instances for each category-----------------#

def get_subjects(randnums)
    subj_arr = []
    url_array = ["http://www.swapi.co/api/people", "http://www.swapi.co/api/films",
                 "http://www.swapi.co/api/planets", "http://www.swapi.co/api/starships",
                 "http://www.swapi.co/api/species"]
    api_array = ["name", "title", "name", "name", "name"]
    counter = 0
    5.times do
      url = url_array[counter] + "/#{randnums[counter]}"
      api_text = JSON.parse(RestClient.get(url.to_s))
      x = api_text["#{api_array[counter]}"]
      subj_arr << x
      counter = counter + 1
      end # end of times loop
    subj_arr
    binding.pry
end # end of method

subjects = get_subjects(randnums)
binding.pry
#--------------INPUT DESCRIPTION HERE----------------#

# def test
#   cat_count
#   total_arr = cat_count
#   rand_numbers(total_arr)
#   randnums = rand_numbers(total_arr)
#   get_subjects(randnums)
#   subjects = get_subjects(randnums)
# end
#
# x = test
# binding.pry


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
#
# date_arr = films


# binding.pry
#----------------------------------------------

# else
#   url = url_array[counter - 5] + "/#{randnums[counter]}"
#   api_text = JSON.parse(RestClient.get(url))
#   x = api_text["#{api_array[counter - 5]}"]
#   subj_arr << x
#   counter = counter + 1
#   end

#---------------------------------
# counter2 = 5
# 5.times do
#   url = url_array[counter] + "/#{randnums[counter2]}"
#   api_text = JSON.parse(RestClient.get(url))
#   x = api_text["#{api_array[counter]}"]
#   subj_arr << x
#   counter = counter + 1
#   counter2 = counter2 + 1
# end
# subj_arr
