require 'objective_status'
require 'cure_discoverer'
require 'player_deck'

RSpec.describe Objective_status, ".get" do
  let(:cure_discoverer) { Cure_discoverer.new }
  let(:player_deck) { Player_deck.new }
  subject { Objective_status.new cure_discoverer, player_deck }

  before(:each) { player_deck.add Player_card.new }

  context "When all cures have been discovered" do
    it "Returns win" do
      cure_discoverer.discover_all
      expect(subject.get).to eq :win
    end
  end
  context "When the player deck is empty" do
    it "Returns lose" do
      player_deck.discard_all_cards
      expect(subject.get).to eq :lose
    end
  end
  context "When neither lost nor won" do
    it "Returns okay" do
      expect(subject.get).to eq :okay
    end
  end
end
