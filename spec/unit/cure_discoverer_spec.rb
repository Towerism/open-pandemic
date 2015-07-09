require 'cure_discoverer'

RSpec.describe "Cure_discoverer", "#discover" do
  context "When the specified disease has not yet been cured" do
    it "Cures the specified disease" do
      cure_discoverer = Cure_discoverer.new
      cure_discoverer.discover(:blue)
      expect(cure_discoverer.discovered?(:blue)).to eq true
    end
  end
  context "When the specified disease does not exist" do
    it "Throws DiseaseError" do
      cure_discoverer = Cure_discoverer.new
      expect { cure_discoverer.discover(:non_existant_disease) }.to raise_error(DiseaseError)
    end
  end
end

RSpec.describe "Cure_discoverer", "#all_cures_discovered?" do
  context "When all diseases have been discovered" do
    it "Returns true" do
      cure_discoverer = Cure_discoverer.new
      cure_discoverer.discover_all
      expect(cure_discoverer.all_cures_discovered?).to eq true
    end
  end
  context "When not all diseases have been discovered" do
    it "Returns false" do
      cure_discoverer = Cure_discoverer.new
      expect(cure_discoverer.all_cures_discovered?).to eq false
    end
  end
end
