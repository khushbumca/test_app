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
    

  end
end