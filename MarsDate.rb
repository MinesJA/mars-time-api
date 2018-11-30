class MarsDate
  attr_reader :diff_ratio, :midnight_correction, :j2000

  def initialize(j2000)
    @diff_ratio = 1.027491252
    @midnight_correction = 0.00096
    @j2000 = j2000
  end

  def sol
    ((j2000 - 4.5) / diff_ratio) + 44796.0 - midnight_correction
  end

  def time
    (24 * sol) % 24
  end

  # def format
  #   Format.h_to_hms(time)
  # end



end
