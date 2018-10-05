require_relative '../config/environment.rb'
require_relative 'api.rb'
require_relative 'cli.rb'
require 'pry'
# require_relative ""
# require_relative "../lib/command_line_interface.rb"

def run_program
  # api
  welcome
  # get_category
  # ask_question("People")
  ask_question
end


# character = get_character_from_user
# show_character_movies(character)
