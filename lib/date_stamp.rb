module DateStamp

  def self.date
    time = Time.now
    return "#{time.day}/#{time.month}/#{time.year}"
  end
end
