class CalculatorService
  
  def self.call(str)
    return 0 if str.strip.empty?  
    str = str.split(",").map(&:to_i)
    return str.sum
  end
end