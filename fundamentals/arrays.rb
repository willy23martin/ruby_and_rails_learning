=begin
ARRAYS
=end

students = ["William Martín", "Jaime Chávez", "Betty González"]
puts students[0] #William Martín
puts students[1] #Jaime Chávez
puts students[2] #Betty González
puts students[3] #""

#Empty array:
pupilos = Array.new
pupilos[0] = "John"
pupilos[1] = "David"
pupilos[2] = "Martha"
puts pupilos.to_s
puts pupilos
puts pupilos.length
puts pupilos.class
puts pupilos.empty?
puts pupilos.sort
puts pupilos.reverse

#Define an array with a number of defined elements:
classmates = Array.new(5)
print classmates
classmates[0] = 21
classmates[1] =25
classmates[2] = 28
classmates[3] = 35
classmates[4] = 21
puts"====================="
print classmates