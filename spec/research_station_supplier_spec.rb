require 'research_station_supplier'

RSpec.describe Research_station_supplier, "#get_new_station" do
  context "When there are research stations in supply" do
    it "returns a new research station" do
      supplier = Research_station_supplier.new
      expect(supplier.get_new_station.class).to eq Research_station
    end
  end
end
