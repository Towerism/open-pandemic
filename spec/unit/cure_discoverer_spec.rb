require 'cure_discoverer'

RSpec.describe "Cure_discoverer", "#discover" do
  context "When there are less than 4 cures discovered" do
    it "Increases the amount of cures discovered by 1" do
      discoverer = Cure_discoverer.new
      discoverer.discover
      expect(discoverer.cures).to eq 1
    end
  end
  context "When there are already 4 cures discovered" do
    it "Does not increase the amount of cures discovered" do
      discoverer = Cure_discoverer.new
      5.times { discoverer.discover }
      expect(discoverer.cures).to eq 4
    end
  end
end
