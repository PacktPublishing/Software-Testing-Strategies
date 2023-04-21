
require "powerof"
     
describe Mathpower do
  describe "#positiveexponent" do
    it "multiplies the number by itself exponent times" do
      obj = Mathpower.new();
      expect(obj.PowerOf(3,3)).to eq(27)
    end 
  end
  
  describe "#zeroexponent" do
    it "returns one" do
      obj = Mathpower.new();
      expect(obj.PowerOf(3,0)).to eq(1)
    end
   end
   
  describe "#negativeexponent" do
    obj = Mathpower.new();
    it "returns one divided by the number" do
      expect(obj.PowerOf(3,0)).to eq(1)
    end
  end
end

