#TestDesign01.rb
#First Example in the test design chapter 
#© 2022, Matthew Heusser
#
#-----------------------------------------
 
print "Enter your name "
propername = gets.chomp().downcase()

if (propername == "victor") 
  puts "Congratulations on your win!"
else
  puts "hello, " + propername + "\n\n";
end

