

class Fizzbuzz_02

  def initialize()

  end

  def get_total_result(loop_max)
    result = "";
    for count in 1..loop_max do
      result = result + calc_individual_buzz_result(count);
    end
    return result;  
  end



  def calc_individual_buzz_result(input)
    result = ""
    if input % 3 == 0 
      result = result + "Fizz" 
    end 

    if input % 5 == 0  
      result = result + "Buzz" 
    end

    if result == "" 
      result = input.to_s();
    end
  
   result = result + "\n"  
  end
end


