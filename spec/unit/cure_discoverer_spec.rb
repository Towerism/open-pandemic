require 'cure_discoverer'

RSpec.describe Cure_discoverer, ".discover" do
  context "When the disease has not yet been cured" do
    it "should cure the disease" do
      subject.discover :blue
      expect(subject.discovered? :blue).to eq true
    end
  end
  context "When the disease does not exist" do
    it "should raise CureError" do
      expect { subject.discover :non_existant_cure }.to raise_error CureError
    end
  end
end

RSpec.describe Cure_discoverer, ".all_cures_discovered?" do
  let(:cure_discoverer) { Cure_discoverer.new }
  subject { cure_discoverer.all_cures_discovered? }

  context "When all cures have been discovered" do
    before { cure_discoverer.discover_all }
    it { is_expected.to eq true }
  end
  context "When not all cures have been discovered" do
    it { is_expected.to eq false }
  end
end
