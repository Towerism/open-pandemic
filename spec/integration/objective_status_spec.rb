require 'objective_status'
require 'cure_discoverer'

RSpec.describe Objective_status, "#get" do
  context "When four cures have been discovered" do
    it "returns that the player has won" do
      cure_discoverer = Cure_discoverer.new
      objective_status = Objective_status.new cure_discoverer
      cure_discoverer.discover_all
      expect(objective_status.get).to eq :win
    end
  end
end
