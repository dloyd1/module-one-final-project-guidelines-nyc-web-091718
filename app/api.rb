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
  $nums = valid_nums(randnums)
  subjects = get_subjects($nums)
end

$xyz = qs_about

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

    pl_wc = pl_arr.sample(3)
    wc_arry << pl_wc

#Q9------Starships-------------#

    st_wc = st_arr.sample(3)
    wc_arry << st_wc

#Q10-----Species-------------#

    sp_wc = sp_arr.sample(3)
    wc_arry << sp_wc

end

$wca = wchoices

#-------------------------------Selecting Solutions---------------------------#

def solutions
  url_array = ["http://www.swapi.co/api/people", "http://www.swapi.co/api/films",
               "http://www.swapi.co/api/planets", "http://www.swapi.co/api/starships",
               "http://www.swapi.co/api/species"]
  $sol_arr = []

#Q1-------Character Homeworld-------#

  api_text = JSON.parse(RestClient.get(url_array[0] + "/#{$nums[0]}"))
  hw = api_text["homeworld"]
  api_text2 = JSON.parse(RestClient.get(hw)) #link from character to homeworld
  name = api_text2["name"]
  $sol_arr << name

#Q2-------Film First Released-------#

  film_date_arr = []
  t_arr = []
  api_text = JSON.parse(RestClient.get(url_array[1] + "/#{$nums[1]}"))
  r1 = api_text["release_date"]
  t1 = api_text["title"]
  film_date_arr << r1.to_f
  t_arr << t1

  api_text = JSON.parse(RestClient.get(url_array[1] + "/#{$wca[1][0]}"))
  r2 = api_text["release_date"]
  t2 = api_text["title"]
  film_date_arr << r2.to_f
  t_arr << t2

  api_text = JSON.parse(RestClient.get(url_array[1] + "/#{$wca[1][1]}"))
  r3 = api_text["release_date"]
  t3 = api_text["title"]
  film_date_arr << r3.to_f
  t_arr << t3

  api_text = JSON.parse(RestClient.get(url_array[1] + "/#{$wca[1][2]}"))
  r4 = api_text["release_date"]
  t4 = api_text["title"]
  film_date_arr << r4.to_f
  t_arr << t4

  $date = film_date_arr
  $titles = t_arr
  $choices2 = t_arr
  # title_1 = $titles[$date.index($date.min)]

  $sol_arr << $titles[$date.index($date.min)] #match min date with movie title
  $choices2.delete($titles[$date.index($date.min)])
  # $q2cs = $titles.select {|x| x != title_1}

#Q3-------Planets = Largest--------#

sz_arr = []
nam_arr = []
api_text = JSON.parse(RestClient.get(url_array[2] + "/#{$nums[2]}"))
sz1 = api_text["diameter"]
nam1 = api_text["name"]
sz_arr << sz1.to_i
nam_arr << nam1

api_text = JSON.parse(RestClient.get(url_array[2] + "/#{$wca[2][0]}"))
sz2 = api_text["diameter"]
nam2 = api_text["name"]
sz_arr << sz2.to_i
nam_arr << nam2

api_text = JSON.parse(RestClient.get(url_array[2] + "/#{$wca[2][1]}"))
sz3 = api_text["diameter"]
nam3 = api_text["name"]
sz_arr << sz3.to_i
nam_arr << nam3

api_text = JSON.parse(RestClient.get(url_array[2] + "/#{$wca[2][2]}"))
sz4 = api_text["diameter"]
nam4 = api_text["name"]
sz_arr << sz4.to_i
nam_arr << nam4

$size = sz_arr
$name1 = nam_arr

$sol_arr << $name1[$size.index($size.max)] #match size with name of planet

#Q4-------Species = Shortest-------#

h_arr = []
n_arr = []
api_text = JSON.parse(RestClient.get(url_array[3] + "/#{$nums[3]}"))
h1 = api_text["height"]
n1 = api_text["name"]
h_arr << h1.to_i
n_arr << n1

api_text = JSON.parse(RestClient.get(url_array[3] + "/#{$wca[3][0]}"))
h2 = api_text["height"]
n2 = api_text["name"]
h_arr << h2.to_i
n_arr << n2

api_text = JSON.parse(RestClient.get(url_array[3] + "/#{$wca[3][1]}"))
h3 = api_text["height"]
n3 = api_text["name"]
h_arr << h3.to_i
n_arr << n3

api_text = JSON.parse(RestClient.get(url_array[3] + "/#{$wca[3][2]}"))
h4 = api_text["height"]
n4 = api_text["name"]
h_arr << h4.to_i
n_arr << n4

$height2 = h_arr
$name3 = n_arr

$sol_arr << $name3[$height2.index($height2.min)] #match height with name of species

#Q5-------Starships = Large Crew----#

cw_arr = []
nm5_arr = []
api_text = JSON.parse(RestClient.get(url_array[4] + "/#{$nums[4]}"))
cw1 = api_text["crew"]
nm1 = api_text["name"]
cw_arr << cw1.to_i
nm5_arr << nm1

api_text = JSON.parse(RestClient.get(url_array[4] + "/#{$wca[4][0]}"))
cw2 = api_text["crew"]
nm2 = api_text["name"]
cw_arr << cw2.to_i
nm5_arr << nm2

api_text = JSON.parse(RestClient.get(url_array[4] + "/#{$wca[4][1]}"))
cw3 = api_text["crew"]
nm3 = api_text["name"]
cw_arr << cw3.to_i
nm5_arr << nm3

api_text = JSON.parse(RestClient.get(url_array[4] + "/#{$wca[4][2]}"))
cw4 = api_text["crew"]
nm4 = api_text["name"]
cw_arr << cw4.to_i
nm5_arr << nm4

$crew = cw_arr
$ship = nm5_arr

$sol_arr << $ship[$crew.index($crew.max)] #match crew size with ship name

#Q6-------Characters = Tallest-------#

ht_arr = []
nm_arr = []
api_text = JSON.parse(RestClient.get(url_array[0] + "/#{$nums[5]}"))
ht1 = api_text["height"]
nm1 = api_text["name"]
ht_arr << ht1.to_i
nm_arr << nm1

api_text = JSON.parse(RestClient.get(url_array[0] + "/#{$wca[5][0]}"))
ht2 = api_text["height"]
nm2 = api_text["name"]
ht_arr << ht2.to_i
nm_arr << nm2

api_text = JSON.parse(RestClient.get(url_array[0] + "/#{$wca[5][1]}"))
ht3 = api_text["height"]
nm3 = api_text["name"]
ht_arr << ht3.to_i
nm_arr << nm3

api_text = JSON.parse(RestClient.get(url_array[0] + "/#{$wca[5][2]}"))
ht4 = api_text["height"]
nm4 = api_text["name"]
ht_arr << ht4.to_i
nm_arr << nm4

$height = ht_arr
$name = nm_arr

$sol_arr << $name[$height.index($height.max)] #match height with name of char

#Q7-------Film = Last Released-------#

date_arr2 = []
t_arr2 = []
api_text = JSON.parse(RestClient.get(url_array[1] + "/#{$nums[6]}"))
nx1 = api_text["release_date"]
tx1 = api_text["title"]
date_arr2 << nx1.to_f
t_arr2 << tx1

api_text = JSON.parse(RestClient.get(url_array[1] + "/#{$wca[6][0]}"))
nx2 = api_text["release_date"]
tx2 = api_text["title"]
date_arr2 << nx2.to_f
t_arr2 << tx2

api_text = JSON.parse(RestClient.get(url_array[1] + "/#{$wca[6][1]}"))
nx3 = api_text["release_date"]
tx3 = api_text["title"]
date_arr2 << nx3.to_f
t_arr2 << tx3

api_text = JSON.parse(RestClient.get(url_array[1] + "/#{$wca[6][2]}"))
nx4 = api_text["release_date"]
tx4 = api_text["title"]
date_arr2 << nx4.to_f
t_arr2 << tx4

$date2 = date_arr2
$titles2 = t_arr2

$sol_arr << $titles2[$date2.index($date2.max)] #match min date with movie title

#Q8-------Planets = Biggest Pop-----#
pop_arr = []
nam2_arr = []
api_text = JSON.parse(RestClient.get(url_array[2] + "/#{$nums[7]}"))
sz1 = api_text["population"]
nam1 = api_text["name"]
pop_arr << sz1.to_i
nam2_arr << nam1

api_text = JSON.parse(RestClient.get(url_array[2] + "/#{$wca[7][0]}"))
sz2 = api_text["population"]
nam2 = api_text["name"]
pop_arr << sz2.to_i
nam2_arr << nam2

api_text = JSON.parse(RestClient.get(url_array[2] + "/#{$wca[7][1]}"))
sz3 = api_text["population"]
nam3 = api_text["name"]
pop_arr << sz3.to_i
nam2_arr << nam3

api_text = JSON.parse(RestClient.get(url_array[2] + "/#{$wca[7][2]}"))
sz4 = api_text["population"]
nam4 = api_text["name"]
pop_arr << sz4.to_i
nam2_arr << nam4

$pop_size = sz_arr
$name2 = nam_arr

$sol_arr << $name2[$pop_size.index($pop_size.max)] #match size with name of planet

#Q9-------Starships = Largest------#
cc_arr = []
nm6_arr = []
api_text = JSON.parse(RestClient.get(url_array[3] + "/#{$nums[8]}"))
cc1 = api_text["cargo_capacity"]
nm_1 = api_text["name"]
cc_arr << cc1.to_i
nm6_arr << nm_1

api_text = JSON.parse(RestClient.get(url_array[3] + "/#{$wca[8][0]}"))
cc2 = api_text["cargo_capacity"]
nm_2 = api_text["name"]
cc_arr << cc2.to_i
nm6_arr << nm_2

api_text = JSON.parse(RestClient.get(url_array[3] + "/#{$wca[8][1]}"))
cc3 = api_text["cargo_capacity"]
nm_3 = api_text["name"]
cc_arr << cc3.to_i
nm6_arr << nm_3

api_text = JSON.parse(RestClient.get(url_array[3] + "/#{$wca[8][2]}"))
cc4 = api_text["cargo_capacity"]
nm_4 = api_text["name"]
cc_arr << cc4.to_i
nm6_arr << nm_4

$cargo = cc_arr
$bigship = nm5_arr

$sol_arr << $bigship[$cargo.index($cargo.max)] #match crew size with ship name

#Q10-------Species = Homeworld-------#

api_text = JSON.parse(RestClient.get(url_array[4] + "/#{$nums[9]}"))
hw1 = api_text["homeworld"]
api_text2 = JSON.parse(RestClient.get(hw1)) #link from species to homeworld
snam = api_text2["name"]
$sol_arr << snam

end
