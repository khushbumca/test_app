class CalculatorService
  
  def self.call(str)
    return 0 if str.strip.empty?   

    new_string = str
    # check if string start with //
    if str.start_with?("//")
        # find out delimiter with position
        delimiter = str[2]
        # start string with 3 position(extract // and delimiter) , then remove \n , then split it by delimiter , then convert to integer
        new_string = str[3..].gsub(/\n/, '').split("#{delimiter}").map(&:to_i)
    else 
        # separated by , and convert to integer number  and then use inject method to array for adding numbers
        new_string = new_string.gsub(/\n/, ',').split(",").map(&:to_i)
    end
    pos, neg = new_string.partition{|x| x.positive?}
    p neg
    neg = neg.select{|x| x != 0}
    p neg
    unless neg.empty?
      raise "negative numbers not allowed #{neg.join(',')}" 
    else 
      return new_string.inject(&:+)
    end
    
    
    
  end
end