
puts "FizzBuzz02.rb"
puts "By Matthew Heusser Matt@xndev.com for the Testing Strategies book"
puts "-----------------------------------------------------------------"

puts "\n"
count_to = ARGV[0].to_i;

if !defined?(count_to) or count_to<1
  puts "Use: FizzBuzz01.rb (count)\n"
  puts "Where count is a round number of value one or higher"
  abort("");
end
#fizzbuzz_02.rb


require_relative 'lib/fizzbuzz_02_lib.rb'
fizzbuzz_02=Fizzbuzz_02.new()
output = fizzbuzz_02.get_total_result(count_to);
puts output
puts "\n";


