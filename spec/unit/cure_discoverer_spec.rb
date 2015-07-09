require 'cure_discoverer'

RSpec.describe Cure_discoverer, ".discover" do
  context "When the disease has not yet been cured" do
    it "Cures the disease" do
      subject.discover :blue
      expect(subject.discovered? :blue).to eq true
    end
  end
  context "When the disease does not exist" do
    it "Raises CureError" do
      expect { subject.discover :non_existant_cure }.to raise_error CureError
    end
  end
end

RSpec.describe Cure_discoverer, ".all_cures_discovered?" do
  context "When all cures have been discovered" do
    it "Returns true" do
      subject.discover_all
      expect(subject.all_cures_discovered?).to eq true
    end
  end
  context "When not all cures have been discovered" do
    it "Returns false" do
      expect(subject.all_cures_discovered?).to eq false
    end
  end
end
