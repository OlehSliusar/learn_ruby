class Timer
  attr_accessor :seconds

  def seconds
    @seconds = 0
  end

  def time_string
    @time_string = Time.at(@seconds).utc.to_s.split[1]
  end

  def padded(seconds)
    seconds.to_s.rjust(2, '0')
  end
end
