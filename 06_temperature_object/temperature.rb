class Temperature
  def initialize(temperature_hash)
    @temperature_hash = temperature_hash
  end

  def to_fahrenheit
    if @temperature_hash[:f] != nil
      return @temperature_hash[:f]
    elsif @temperature_hash[:c] != nil
      return (@temperature_hash[:c]) * 9.0 / 5.0 + 32
    end
  end

  def to_celsius
    if @temperature_hash[:c] != nil
      return @temperature_hash[:c]
    elsif @temperature_hash[:f] != nil
      return (@temperature_hash[:f] - 32) * 5.0 / 9.0
    end
  end

  def self.in_fahrenheit(temperature)
    return Temperature.new({:f => temperature})
  end

  def self.in_celsius(temperature)
    return Temperature.new({:c => temperature})
  end

end

class Celsius < Temperature
  def initialize(temperature)
    super({:c => temperature})
  end
end
class Fahrenheit < Temperature
  def initialize(temperature)
    super({:f => temperature})
  end

end
