class DiseaseError < RuntimeError
end

class Cure_discoverer
  def initialize
    @discovered = { :blue => false, :yellow => false, :red => false, :black => false }
  end

  def discover disease
    check_disease_exists disease
    @discovered[disease] = true
  end

  def check_disease_exists disease
    raise DiseaseError, 'No such disease' unless @discovered.has_key? disease
  end

  def discover_all
    @discovered.each { |k, v| @discovered[k] = true }
  end

  def discovered? disease
    check_disease_exists disease
    @discovered[disease]
  end

  def all_cures_discovered?
    return @discovered.all? { |k, v| @discovered[k] == true }
  end

  private :check_disease_exists
end
