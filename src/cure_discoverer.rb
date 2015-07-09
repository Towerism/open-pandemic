class Cure_discoverer
  def initialize
    @cures = 0
  end

  def discover
    @cures += 1
    normalize_cures
  end

  def normalize_cures
    if @cures >= 4
      @cures = 4
    end
  end

  def cures
    @cures
  end
end
