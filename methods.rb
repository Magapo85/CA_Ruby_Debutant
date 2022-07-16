#!/usr/bin/env ruby

def say_hi
	puts "Hi!"
end
say_hi

def clap_hands(number)
    puts "Clap " * number
end
clap_hands(3)

def square(number) 
	puts number*number
end
square(2)

class Attendee
  attr_reader :height, :pass_id
  def initialize(height)
    @height = height
    revoke_pass!
  end
  def issue_pass!(pass_id)
    @pass_id = pass_id
  end
  def revoke_pass!
    @pass_id = nil
  end
end

puts Attendee.new(106)
puts Attendee.new(106).height
puts Attendee.new(106).pass_id
attendee = Attendee.new(106)
attendee.issue_pass!(42)
puts attendee.pass_id
attendee2 = Attendee.new(106)
attendee2.issue_pass!(42)
attendee2.revoke_pass!
puts attendee2.pass_id
