require_relative 'research_station'

class Research_station_supplier
  def initialize
    @stations = 6
  end

  def get_new_station
    if @stations > 0
      Research_station.new
    end
  end
end
