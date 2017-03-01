module DateStamp

  def self.date
    return "#{time.day}/#{time.month}/#{time.year}"
  end

  private_class_method def self.time
    return Time.new
  end
end
