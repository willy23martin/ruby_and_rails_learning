=begin
STRING INTERPOLATION
=end

puts "Welcome students to this Ruby class"
apples = 5
student ="William Martín"
price = 6.99
# To print "William Martín has 5 apples. It costs 6.99 dollars"
puts student + " has " +  apples.to_s + " apples. It costs $" + price.to_s + " dollars"
# String interpolation: variables do not need to be converted into a string:
puts "#{student} has #{apples} apples. It costs USD $#{price}."

