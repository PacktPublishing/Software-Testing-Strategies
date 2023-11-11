
# romannumeral_lib.rb
#------------------------------------------------------------#
# By Matthew Heusser
# Possibly as a chatgpt generated code example
#------------------------------------------------------------#
# Implements the roman number kata 
# As Defined by Dzone
# https://dzone.com/articles/roman-numerals-kata-tdd-and
#------------------------------------------------------------#

class Romannumeral

  ROMAN_NUMERAL_MAPPING = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }



  def initialize()

  end

  def rn_to_decimal(input)
    result = 0
    

    input.chars.each_with_index do |symbol, index|


      current_value = roman_numeral_value(symbol)

      if (input[index + 1].nil?) 
        result += current_value
      else
        next_value = roman_numeral_value(input[index + 1]) 
   
        if next_value && next_value > current_value
          result -= current_value
        else
          result += current_value
        end
      end
    end

    result  
  end

 private

  def roman_numeral_value(letter)

    case letter
    when 'I'
      return 1
    when 'V'
      return 5
    when 'X'
      return 10
    when 'L'
      return 50
    when 'C'
      return 100
    when 'D'
      return 500
    when 'M'
      return 1000
    else
      output = "Invalid Roman numeral symbol: (" + letter.to_s() + ")"
      raise ArgumentError, output
    end
  end


end


