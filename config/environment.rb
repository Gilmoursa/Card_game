# $LOAD_PATH << '.'
# Dir["app/concerns/*.rb"].each {|f| require f}
# Dir["app/models/*.rb"].each {|f| require f}
require_relative '../app/models/gamelogic_cli.rb'
require_relative '../app/models/deck.rb'
require_relative '../app/models/player.rb'