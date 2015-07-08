class Objective_status
  def initialize
    @cures = 0
  end

  def discover_cure
    @cures += 1
  end

  def get
    check_win
  end

  def check_win
    return :win if @cures >= 4
  end
end
