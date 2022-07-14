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

def self.two_fer(name=gets)#nil)
    #puts name.inspect
    name=name.chomp
    #puts name.inspect
    #puts name.empty?#blank?
    #name.empty? ? name="you" : name
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
