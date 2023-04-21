require_relative '../lib/fizzbuzz_02_lib.rb'

require 'minitest/autorun'

class TestFizzbuzz_02 < MiniTest::Test
  def test_init 
    playing = Fizzbuzz_02.new()
    assert(playing!=nil,"Created object")
  end

  def test_calc_individual_easy
    playing = Fizzbuzz_02.new()
    result = playing.calc_individual_buzz_result(1);
    assert_equal("1\n", result);
    result = playing.calc_individual_buzz_result(8);
    assert_equal("8\n", result);
    result = playing.calc_individual_buzz_result(301);
    assert_equal("301\n", result);
  end

  def test_calc_individual_fiz_or_buz
    playing = Fizzbuzz_02.new();
    result = playing.calc_individual_buzz_result(3);
    assert_equal("Fizz\n", result);
    result = playing.calc_individual_buzz_result(5);
    assert_equal("Buzz\n", result);
    result = playing.calc_individual_buzz_result(6);
    assert_equal("Fizz\n", result);
    result = playing.calc_individual_buzz_result(10);
    assert_equal("Buzz\n", result);
  end

  def test_calc_individual_fizzbuzz
    playing = Fizzbuzz_02.new()
    result = playing.calc_individual_buzz_result(15);
    assert_equal("FizzBuzz\n", result);
    result = playing.calc_individual_buzz_result(300);
    assert_equal("FizzBuzz\n", result);
  end



  def test_entire_result
    playing = Fizzbuzz_02.new()
    result = playing.get_total_result(1);
    assert_equal("1\n", result); 
    test_string = "1\n2\n\Fizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n"
    result = playing.get_total_result(12);
    assert_equal(test_string, result);
  end
end
