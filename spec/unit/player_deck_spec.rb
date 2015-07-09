require 'player_deck'
require 'rspec/expectations'

RSpec.describe Player_deck, ".empty?" do
  context "When there are no cards in the deck" do
    it { is_expected.to be_empty }
  end
  context "When there are cards in the deck" do
    before(:example) { subject.add Player_card.new }
    it { is_expected.not_to be_empty }
  end
end

RSpec.describe Player_deck, ".add" do
  before(:example) { subject.add Player_card.new }
  it { is_expected.not_to be_empty }
end

RSpec.describe Player_deck, ".discard_all_cards" do
  context "When there are cards in the deck" do
    before(:example) { subject.discard_all_cards }
    it { is_expected.to be_empty }
  end
end
