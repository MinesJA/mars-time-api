class Format

  def self.h_to_hms(h)
    x = h * 3600
    hh = (x / 3600).round

    if hh < 10
      hh = "0" + hh.to_s
    end

    y = x % 3600
    mm = (y / 60).round

    if mm < 10
      mm = "0" + mm.to_s
    end

    ss = (y % 60).round

    if ss < 10
      ss = "0" + ss.to_s
    end

    hh.to_s + ":" + mm.to_s + ":" + ss.to_s
  end


end
