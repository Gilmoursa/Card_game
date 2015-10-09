# $LOAD_PATH << '.'
# Dir["app/concerns/*.rb"].each {|f| require f}
# Dir["app/models/*.rb"].each {|f| require f}
require 'pry'
require_relative '../app/models/card.rb'
require_relative '../app/models/deck.rb'
require_relative '../app/models/player.rb'
require_relative '../app/Controllers/player_controller.rb'
require_relative '../app/Controllers/hand_controller.rb'
require_relative '../app/models/hand.rb'
require_relative '../app/Controllers/deck_controller.rb'
require_relative '../app/models/game.rb'
require_relative '../app/Controllers/game_controller.rb'








