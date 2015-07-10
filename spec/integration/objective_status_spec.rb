require 'objective_status'
require 'cure_discoverer'
require 'player_deck'

RSpec.describe Objective_status, ".get" do
  let(:cure_discoverer) { Cure_discoverer.new }
  let(:player_deck) { Player_deck.new }
  let(:objective_status) { Objective_status.new cure_discoverer, player_deck }

  subject { objective_status.get }

  before(:each) { player_deck.add Player_card.new }

  context "When all cures have been discovered" do
    before { cure_discoverer.discover_all }
    it { is_expected.to be :win }
  end
  context "When the player deck is empty" do
    before { player_deck.discard_all_cards }
    it { is_expected.to be :lose }
  end
  context "When neither lost nor won" do
    it { is_expected.to be :okay }
  end
end
