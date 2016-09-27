#tryruby.org and also codeacademy ruby
# Calculator
#
# Explanation
#
# You will be building a calculator. A calculator can perform multiple arithmetic operations. Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
# Specification:
#
# A user should be given a menu of operations
# A user should be able to choose from the menu
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
# This process should continue until the user selects a quit option from the menu
# Phase 1
#
# Calculator functionality
# Calculator should be able to do basic arithmetic (+,-, *, /)
# Phase 2
#
# Advanced Calculator functionality
# Calculator should be able to do basic arithmetic (exponents, square roots)
# Bonus
#
# Mortgage Calculator
#
# Calculate the monthly required payment given the other variables as input (look up the necessary variables)
#
# BMI Calculator
#
# Calculate the body mass index (BMI) for an individual, given their height and weight
#
# Trip Calculator
#
# Calculate a trip time and cost given inputs for
#
# distance
# miles per gallon
# price per gallon
# speed in miles per hour

def get_user_choice
  # show the user the available options
  puts "(+) - Addition"
  puts "(-) - Subtraction"
  puts "(*) - Multiplication"
  puts "(/) - Division"
  puts "(x) - Exponent"
  puts "(r) - Root"
  puts "(q) - Quit"

  print "Enter your selection: "
  gets.downcase.chomp  #implicit return
end

  ## addition
def addition
  puts "insert your first number"
  first = gets.to_i
  puts "insert your second number"
  second = gets.to_i
  puts first + second  #shows the result of the two numbers added
end

## subtraction
def subtraction
  puts "insert your first number"
  first = gets.to_i
  puts "insert your second number"
  second = gets.to_i
  puts first - second
end

## multiplication
def multiplication
  puts "insert your first number"
  first = gets.to_i
  puts "insert your second number"
  second = gets.to_i
  puts first * second
end

## division
def division
  puts "insert your first number"
  first = gets.to_i
  puts "insert your second number"
  second = gets.to_i
  puts first / second
end

## exponent
def exponent
  puts "insert your number"
  first = gets.to_i
  puts "insert the value of exponent"
  second = gets.to_i
  puts first**second
end

## root
def root
  puts "insert your number"
  first = gets.to_f
  puts "insert the root power"
  second = gets.to_i
  puts first**(1/second)
end

menu_choice = get_user_choice
puts "Thanks for your selection #{ menu_choice }"

until menu_choice == 'q'
  #perform the user's desired action
  case menu_choice
  when '+'
    addition
  when '-'
    subtraction
  when '*'
    multiplication
  when '/'
    division
  when 'x'
    exponent
  else 'r'
    root
end
    menu_choice = get_user_choice
  #Get the next operation
end
