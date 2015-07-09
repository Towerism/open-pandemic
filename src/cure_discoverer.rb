class CureError < RuntimeError
end

class Cure_discoverer
  def initialize
    @cures = [:blue, :yellow, :red, :black]
    init_discovered
  end

  def init_discovered
    @discovered = Hash.new
    @cures.each do |cure| 
      @discovered[cure] = false
    end
  end

  def discover_all
    @discovered.each { |k, v| discover k }
  end

  def discover cure
    check_cure_exists cure
    @discovered[cure] = true
  end

  def check_cure_exists cure
    raise CureError, "No such cure, '#{cure}'" unless @cures.include? cure
  end

  def all_cures_discovered?
    return @discovered.all? { |k, v| discovered? k }
  end

  def discovered? cure
    check_cure_exists cure
    @discovered[cure]
  end

  private :check_cure_exists
end
