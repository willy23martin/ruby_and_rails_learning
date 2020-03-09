=begin
INTEGER AND FLOATING METHODS
=end

#Even?:
age = 19
puts age.even?

#Odd?
number=22
puts age.odd?

#to_s
apples = 5
puts "Apples: ".concat(apples.to_s)
puts apples.to_s.class
puts apples.class

#to_f:
number2 = 22
puts number2.class
puts number2.to_f.class

=begin
FLOATING METHODS
=end

#Abs:
number3 = -13.88
puts number3
puts number3.class
puts number3.abs

#Round
number4 = -13.88
puts number4
puts number4.class
puts number4.round #-14

#To_i
number5 = -13.88
puts number5
puts number5.class
puts number5.to_i #-13
puts number5.to_i.class #-13
