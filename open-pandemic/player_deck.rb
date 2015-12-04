class Player_card
end

class Player_deck
  def initialize
    @cards = []
  end

  def add card
    @cards << card
  end

  def discard_all_cards
    @cards = []
  end

  def empty?
    @cards.empty?
  end
end
