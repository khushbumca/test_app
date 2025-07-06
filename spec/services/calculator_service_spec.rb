require 'rails_helper'

RSpec.describe CalculatorService do
  describe "add string of comma-separated numbers " do
    it "returns 0 if string is empty" do
      expect(CalculatorService.call("")).to eq(0)
    end
  end
end