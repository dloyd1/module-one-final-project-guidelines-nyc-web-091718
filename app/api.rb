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

#total_arr = cat_count

#--------------Randomly select two instances for each category-----------------#

def rand_numbers(total_arr)

  num_arr = []
  while num_arr[1] == num_arr[6]
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
num_arr
end
#randnums = rand_numbers(total_arr)

#-----------------To input valid starship numbers.-------------------#

def valid_nums(randnums)
# exclusions = [1, 4, 6, 7, 8, 14, 16, 18, 19, 20, 24, 25, 26, 30]
ship_arr = [2, 3, 5, 9, 10, 11, 12, 13, 15, 17, 21, 22,
            23, 27, 28, 29, 31, 32]

x = ship_arr.sample
ship_arr.delete(x)
y = ship_arr.sample

randnums = randnums.fill(x.to_i, 3..3)
randnums = randnums.fill(y.to_i, 8..8)
end
#nums = valid_nums(randnums)

#--------------Randomly select two instances for each category-----------------#

def get_subjects(nums)
    subj_arr = []
    url_array = ["http://www.swapi.co/api/people", "http://www.swapi.co/api/films",
                 "http://www.swapi.co/api/planets", "http://www.swapi.co/api/starships",
                 "http://www.swapi.co/api/species"]
    api_array = ["name", "title", "name", "name", "name"]
    counter = 0
    counter2 = 0
    10.times do
      if counter == 5
        counter = 0
      end
      url = url_array[counter] + "/#{nums[counter2]}"
      api_text = JSON.parse(RestClient.get(url.to_s))
      x = api_text["#{api_array[counter]}"]
      subj_arr << x
      counter = counter + 1
      counter2 = counter2 + 1
      end # end of times loop
    subj_arr

end # end of method

#subjects = get_subjects(nums)

#---------------------Agregating Subject Methods-------------------------------#

def qs_about()
  total_arr = cat_count
  randnums = rand_numbers(total_arr)
  nums = valid_nums(randnums)
  subjects = get_subjects(nums)
  $nums = nums
end

x = qs_about

#-------------------------------Selecting Wrong Choices------------------------#

def wchoices
wc_arry = []
#Q1-------Characters-------#
    c_arr = (1..87).to_a
    c_arr.delete($nums[0])
    c_arr.delete($nums[5])
    c_wc = c_arr.sample(3)
    wc_arry << c_wc
#Q2------Films-------------#
    f_arr = (1..7).to_a
    f_arr.delete($nums[1])
    f_arr.delete($nums[6])
    f_wc = f_arr.sample(3)
    wc_arry << f_wc
#Q3------Planets-------------#
    pl_arr = (1..61).to_a
    pl_arr.delete($nums[2])
    pl_arr.delete($nums[7])
    pl_wc = pl_arr.sample(3)
    wc_arry << pl_wc
#Q4------Starships-------------#
    st_arr = [2, 3, 5, 9, 10, 11, 12, 13, 15, 17, 21, 22,
              23, 27, 28, 29, 31, 32]
    st_arr.delete($nums[3])
    st_arr.delete($nums[8])
    st_wc = st_arr.sample(3)
    wc_arry << st_wc
#Q5------Species-------------#
    sp_arr = (1..37).to_a
    sp_arr.delete($nums[4])
    sp_arr.delete($nums[9])
    sp_wc = sp_arr.sample(3)
    wc_arry << sp_wc
#Q6------Characters-------#
    c_wc = c_arr.sample(3)
    wc_arry << c_wc
#Q7------Films-------------#
    f_wc = f_arr.sample(3)
    wc_arry << f_wc
#Q8------Planets-------------#
    pl_arr = (1..61).to_a
    pl_arr.delete($nums[2])
    pl_arr.delete($nums[7])
    pl_wc = pl_arr.sample(3)
    wc_arry << pl_wc
#Q9------Starships-------------#
    st_wc = st_arr.sample(3)
    wc_arry << st_wc
#Q10-----Species-------------#
    sp_wc = sp_arr.sample(3)
    wc_arry << sp_wc

end

wca = wchoices
binding.pry




# pepole_arr = people_arr.delete_at(index(nums[0]))
# people_arr = people_arr.delete_at(index(nums[5]))


# people_arr = (1..87).to_a.index(nums[5])
# films_arr = (1..7).to_a.delete(nums[1]).delete(nums[6])
# planets_arr = (1..61).to_a.delete(nums[2]).delete(nums[7])
# starships arr = [2, 3, 5, 9, 10, 11, 12, 13, 15, 17, 21, 22,
#                  23, 27, 28, 29, 31, 32]to_a.delete(nums[3]).delete(nums[8])
# species_arr = (1..37).to_a.delete(nums[4]).delete(nums[9])


#def choices(total_arr, rand_nums, nums, subjects)
