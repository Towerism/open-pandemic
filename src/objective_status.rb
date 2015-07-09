class Objective_status
  def initialize(cure_discoverer)
    @cure_discoverer = cure_discoverer
  end

  def get
    check_win
  end

  def check_win
    return :win if @cure_discoverer.cures == 4
  end
end
