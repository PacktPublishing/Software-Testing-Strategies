require_relative '../lib/romannumeral_lib.rb'

require 'minitest/autorun'

class TestRomannumeral < MiniTest::Test
  def test_init 
    playing = Romannumeral.new()
    assert(playing!=nil,"Created object")
  end

  def test_I_returns_one
     playing = Romannumeral.new()
     pass = "I";
     assert_equal 1, playing.rn_to_decimal(pass)
  end


  def test_single_digits
    playing = Romannumeral.new
    assert_equal 1, playing.rn_to_decimal("I")
    assert_equal 2, playing.rn_to_decimal('II')
    assert_equal 3, playing.rn_to_decimal('III')
  end

  def test_single_symbols
    playing = Romannumeral.new
    assert_equal 5, playing.rn_to_decimal('V')
    assert_equal 10, playing.rn_to_decimal('X')
  end

  def test_additive
    playing= Romannumeral.new
    assert_equal 6, playing.rn_to_decimal('VI')
    assert_equal 7, playing.rn_to_decimal('VII')
    assert_equal 8, playing.rn_to_decimal('VIII')
  end

  def test_subtractive
    romannumeral = Romannumeral.new
    assert_equal 4, romannumeral.rn_to_decimal('IV')
    assert_equal 9, romannumeral.rn_to_decimal('IX')
    assert_equal 40, romannumeral.rn_to_decimal('XL')
    assert_equal 90, romannumeral.rn_to_decimal('XC')
    assert_equal 400, romannumeral.rn_to_decimal('CD')
    assert_equal 900, romannumeral.rn_to_decimal('CM')
  end

  def test_large_numbers
    romannumeral = Romannumeral.new
    assert_equal 1954, romannumeral.rn_to_decimal('MCMLIV')
    assert_equal 1990, romannumeral.rn_to_decimal('MCMXC')
    assert_equal 2014, romannumeral.rn_to_decimal('MMXIV')
    assert_equal 3999, romannumeral.rn_to_decimal('MMMCMXCIX')
  end

  def test_stress_test
    romannumeral = Romannumeral.new
    min_numeral = 'I' * 1000
    max_numeral = 'M' * 1000

    assert_equal 1000, romannumeral.rn_to_decimal(min_numeral)
    assert_equal 1000000, romannumeral.rn_to_decimal(max_numeral)
  end


end
