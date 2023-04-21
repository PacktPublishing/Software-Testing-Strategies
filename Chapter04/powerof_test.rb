require_relative './lib/powerof.rb'

require 'minitest/autorun'

class TestPowerof < MiniTest::Test

  def test_powerof_positive_integer
    obj = Mathpower.new();
    assert_equal(27, obj.PowerOf(3,3));
  end

  def test_powerof_zero
    obj = Mathpower.new();
    assert_equal(1, obj.PowerOf(3,0));
  end

  def test_powerof_negative
    obj = Mathpower.new();
    assert_equal(0.25, obj.PowerOf(4,-1));
  end
end


