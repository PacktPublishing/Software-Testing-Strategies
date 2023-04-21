
puts "FizzBuzz01.rb"
puts "By Matthew Heusser Matt@xndev.com for the Testing Strategies book"
puts "-----------------------------------------------------------------"

puts "\n"
count_to = ARGV[0].to_i;

if !defined?(count_to) or count_to<1
  puts "Use: FizzBuzz01.rb (count)\n"
  puts "Where count is a round number of value one or higher"
  abort("");
end

for count in 1..count_to do
  if count % 3 == 0 
    puts "Fizz"
  elsif count % 5 == 0
    puts "Buzz"
  else
    puts count.to_s(); 
  end
end


