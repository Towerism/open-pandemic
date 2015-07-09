require 'objective_status'

RSpec.describe Objective_status, "#get" do
  context "When four cures have been discovered" do
    it "returns that the player has won" do
      objective_status = Objective_status.new
      4.times { objective_status.discover_cure }
      expect(objective_status.get).to eq :win
    end
  end
end
