class Objective_status
  def initialize cure_discoverer, player_deck
    @cure_discoverer = cure_discoverer
    @player_deck = player_deck
  end

  def get
    check_win
  end

  def check_win
    return :win if @cure_discoverer.all_cures_discovered?
    return :lose if @player_deck.empty?
    :okay
  end
end
