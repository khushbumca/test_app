class CalculatorService
  
  def self.call(str)
    return 0 if str.strip.empty?   
    # separated by , and convert to integer number  and then use inject method to array for adding numbers
    return str.split(",").map(&:to_i).inject(&:+)
  end
end