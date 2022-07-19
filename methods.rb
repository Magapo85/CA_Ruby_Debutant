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
  @left = []
  @right = []
  @center = 0
  #attr_reader :data#, :left=[], :right=[]
  
  def initialize(data)
    @center = data
    puts "Data centered : #{@center}"
  end
  def self.left
    @left
  end
  def left
    self.class.left
  end
  def self.right
    @right
  end
  def right
    self.class.right
  end
  def add(data)
    puts "#{data} > ou < #{@center}"
    data > @center ? go_right(data) : go_left(data)
  end
  def go_right(data)
    right.insert(0, data)
    #@right ? @right.insert(data) : @right = Bst.new(data)
    puts "Right : #{@right}"
  end
  def go_left(data)
    puts @left
    left.insert(0, data)
    #@left ? @left.insert(data) : @left = Bst.new(data)
    puts "Left : #{@left}"
  end
  def each(&block)
    puts "debut each"
    return puts "Right : #{right} et left : #{left} test enum_for(:each)" unless block_given?
    #@left.each(&block) if @left
    #block.call(data) if @data
    #@right.each(&block) if @right
    #@left&.each(&block)
    #yield @data
    #@right&.each(&block)
    puts "fin each"
  end
end

test = Bst.new(5)
test.add(4)
test.add(2)
test.add(6)
test.add(7)
test.each()
