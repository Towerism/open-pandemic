class DiseaseError < RuntimeError
end

class Cure_discoverer
  def initialize
    @discovered = { :blue => false, :yellow => false, :red => false, :black => false }
  end

  def discover(color)
    check_disease_exists(color)
    @discovered[color] = true
  end

  def check_disease_exists(color)
    raise DiseaseError unless @discovered.has_key?(color)
  end

  def discover_all
    @discovered.each { |k, v| @discovered[k] = true }
  end

  def discovered?(color)
    @discovered.fetch(color)
  end

  def all_cures_discovered?
    return false if @discovered.any? { |k, v| @discovered[k] == false }
    true
  end
end
