require 'rails_helper'

RSpec.describe CalculatorService do
  describe "add string of comma-separated numbers " do
    it "returns 0 if string is empty" do
      expect(CalculatorService.call("")).to eq(0)
    end

    it "returns sum of 2 numbers for comma-separated numbers" do
      expect(CalculatorService.call("10,2")).to eq(12)
    end

    it "not returns sum of 2 numbers for comma-separated numbers" do
      expect(CalculatorService.call("10,2")).to_not eq(1)
    end
    
    it "returns itself for adding single number string" do
      expect(CalculatorService.call("10")).to eq(10)
    end

    it "returns 0 for adding single string value" do
      expect(CalculatorService.call("a")).to eq(0)
    end

    it "returns 0 for adding comma separated string values" do
      expect(CalculatorService.call("a,b")).to eq(0)
    end

    it "returns sum of integer numbers for adding comma separated string with string and integer values" do
      expect(CalculatorService.call("1,a,b,3")).to eq(4)
    end

    it "return sum of numbers for handling new lines between numbers instead of commas" do
      expect(CalculatorService.call("10\n2,3")).to eq(15)
    end

    it "different delimiter for //[delimiter]\n[numbers…]" do
      expect(CalculatorService.call("//;\n10;2")).to eq(12)
    end

    it "negative number will throw an exception" do
      expect {CalculatorService.call("10,-1, 7")}.to raise_error("negative numbers not allowed -1")
    end

  end
end