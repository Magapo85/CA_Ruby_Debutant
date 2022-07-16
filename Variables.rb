#!/usr/bin/env ruby

myFirstVariable = "I made a variable!"
puts myFirstVariable

=begin
Define your variables below!
=end
myString="I'm programming!"
myBoolean=true
myNumber=5
puts myString
puts myBoolean
puts myNumber

x = '2'
y = x + 'n'
puts y

def self.two_fer(name=gets.chomp)#nil)
    #puts name.inspect
    #name=name.chomp
    #puts name.inspect
    #puts name.empty?#blank?
    #puts name
    puts "One for #{name.empty? ? name="you" : name}, one for me."
    puts "One for %s, one for me." % name
end
two_fer

LAYER_PREPARATION_TIME = 2
EXPECTED_MINUTES_IN_OVEN = 40
def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
end
def preparation_time_in_minutes(layers)
    LAYER_PREPARATION_TIME * layers
end
def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
end

=begin
+ for addition
- for subtraction
* for multiplication
/ for division
** is used for exponents power
% is modulo
=end

numberOne = 6
numberTwo = 8
numberThree = 5
numberFour = 12
numberFive = 36

testOne = numberTwo * numberThree #fill in the blank to make this 40
testTwo = numberFive % numberOne #fill in the blank to make this 0
testThree = numberFour - numberThree #fill in the blank to make this 7
if testOne == 40 && testTwo == 0 && testThree == 7
    puts true
end

myFirstString = 'I am a string!' #single quotes
mySecondString = "Me too!" #double quotes
"Hi!".length #is 3
"Hi!".reverse #is !iH
"Hi!".upcase #is HI!
"Hi!".downcase #is hi!
"Hi!".downcase.reverse #is !ih
"Happy Birthday!".include?("Happy") #is true
myString = "Hi! I am code!" #In the next line, use methods to change it.
myNewString = myString.downcase.reverse
puts myNewString

myArray = []  # an empty array
myOtherArray = [1, 2, 3]  # an array with three elements
myOtherArray[3] = 4
myArray = ["Not me!", "Not me!", "Me!", "Not me!"]
puts myArray[2]
