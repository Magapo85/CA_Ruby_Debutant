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

Attendee.new(106)
puts Attendee.new(106).height
puts Attendee.new(106).pass_id
attendee = Attendee.new(106)
attendee.issue_pass!(42)
puts attendee.pass_id
attendee2 = Attendee.new(106)
attendee2.issue_pass!(42)
attendee2.revoke_pass!
puts attendee2.pass_id

puts "suite"
list=[1,2,3,4,5,6]
puts list
puts list.enum_for(:each)

class Bst
  attr_reader :data, :left, :right
  #attr_accessor :left=[], :right=[]
  
  def initialize(data)
    @data = data
    puts "Data centered : #{@data}"
  end
  def insert(data)
    data > @data ? go_right(data) : go_left(data)
  end
  def go_right(data)
    @right ? @right.insert(data) : @right = Bst.new(data)
    puts "Right : #{@right}"
  end
  def go_left(data)
    @left ? @left.insert(data) : @left = Bst.new(data)
    puts "Left : #{@left}"
  end
  def each(&block)
    puts "debut each"
    return puts "Right : #{@right} et left : #{@left} test enum_for(:each)" unless block_given?
    @left.each(&block) if @left
    block.call(data) if @data
    @right.each(&block) if @right
    #@left&.each(&block)
    #yield @data
    #@right&.each(&block)
    puts "fin each"
  end
end

Bst.new(5)
Bst.new(5).insert(4)
Bst.new(5).insert(2)
Bst.new(5).insert(6)
Bst.new(5).insert(7)
Bst.new(5).each()
