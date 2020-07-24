class Game
  attr_reader :players, :current_turn
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def attack(player)
    player.take_damage
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def change_turn
    @current_turn = opponent_of(@current_turn)
  end

  def opponent_of(player)
    player == player_1 ? player_2 : player_1
  end

end
