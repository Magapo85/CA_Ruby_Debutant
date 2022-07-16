#!/usr/bin/env ruby

booleanOne = true
randomCode = "Hi!"
if booleanOne
  puts "I will be printed!"
elsif randomCode.length>=1
  puts "Even though the above code is true, I won't be executed because the earlier if statement was true!"
else
  puts "I won't be printed because the if statement was executed!"
end

language = "Spanish"
if language === "English"
  puts "Hello!"
elsif language === "Spanish"
  puts "Hola!"
else
  puts "I don't know that language!"
end

=begin
while condition true
    #something to do
end
until condition false
    #something to do
end
=end
i=1
until i>7
	puts "I'm looping!"
        i=i+1
end
