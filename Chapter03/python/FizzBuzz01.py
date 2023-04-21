import sys

print("FizzBuzz01.rb")
print("By Matthew Heusser Matt@xndev.com for the Testing Strategies book")
print("-----------------------------------------------------------------")

print("\n")

if len(sys.argv) < 2 or int(sys.argv[1]) < 1:
    print("Use: python FizzBuzz01.py (count)\n")
    print("Where count is a round number of value one or higher")
    exit(-1)

count_to = int(sys.argv[1])

for idx  in range(count_to):
    count = idx + 1
    if count % 3 == 0:
        print("Fizz")
    elif count % 5 == 0:
        print("Buzz")
    else:
        print(count) 
