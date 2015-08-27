class Bike

  attr_reader :status

  def initialize
    @status = true
  end

  def report_broken
    @status = false
  end

  def fix
    @status = true
  end

  def working?
    status == true
  end

  def broken?
    status == false
  end

end