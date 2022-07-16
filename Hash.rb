#!/usr/bin/env ruby

myHash1={
    "Key" => "value",
    "Key2" => "value2"
}

myHash0={
    Key: "value",
    Key2: "value2",
}

puts myHash1["Key"] # puts value
puts myHash0[:Key] # puts "value"

myHash2=Hash.new()
myHash2["Key"]="value"
myHash2["Key2"]="value2"

myHash3=Hash.new()
myHash3[:Key]="value"
myHash3[:Key2]="value2"
puts myHash3[:Key] # puts "value"

myFirstHash=Hash.new()
myFirstHash["Dad"]="Dave"
puts myFirstHash["Dad"]
