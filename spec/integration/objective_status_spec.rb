require 'objective_status'
require 'cure_discoverer'

RSpec.describe Objective_status, ".get" do
  let(:cure_discoverer) { Cure_discoverer.new }
  subject { Objective_status.new cure_discoverer}

  context "When all cures have been discovered" do
    it "Returns win" do
      cure_discoverer.discover_all
      expect(subject.get).to eq :win
    end
  end
  context "When not all cures have been discovered" do
    it "Returns okay" do
      expect(subject.get).to eq :okay
    end
  end
end
