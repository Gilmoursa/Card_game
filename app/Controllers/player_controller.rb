class PlayerController

  def create_player(hand)
    Player.new(hand)
  end

end