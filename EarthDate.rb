class EarthDate
  attr_reader :tai_offset, :jd_at_epoch, :jd_at_2000, :days_since_epoch, :leap_seconds, :time

  def initialize
    @tai_offset = 37
    @jd_at_epoch = 2440587.5
    @jd_at_2000 = 2451545.0
    @days_since_epoch = 8.64E7
    @leap_seconds = 32.184
    # leap seconds since Jan 1, 2017
  end

  def time
    Time.now
  end

  def seconds
    time.to_i
  end

  def milliseconds
     seconds * 1000
  end

  def jd_ut
    # Julian Date - UTC
    jd_at_epoch + (milliseconds / days_since_epoch)
  end

  def jd_tt
    # Julian Date - Terrestial Time
    jd_ut + (tai_offset + leap_seconds)
  end

  def j2000
    # Number of fractional days since 12:00 on Jan 1, 2000
    jd_tt - jd_at_2000
  end

end
