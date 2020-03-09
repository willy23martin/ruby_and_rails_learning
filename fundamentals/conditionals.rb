=begin
CONDITIONAL EXPRESSIONS
=end
weather = "Sunny"
puts "Weather: ".concat(weather)
#if-else condition expression
if weather == "Raining"
  puts "I am staying at home"
else
  puts "I am going to walk"
end

budget = 13564
puts "Budget: ".gsub(" "," ".concat(13564.to_s))
#if-elsif-else conditional expression
if budget < 13000
  puts "Not enough budget"
elsif budget > 13000
  puts "Enough budget"
else
  puts "Budget limited"
end

#Switch - case conditional execution:
grade = "b"
puts "Grade: ".gsub(" ", " ".concat(grade))
case(grade.upcase)
when "A", "A+", "A-"
  puts "You are awsome student"
when "B", "B+","B-"
  puts "You are a good student"
when "C", "C+", "C-"
  puts "You are a poor student"
when "D", "D-", "D+"
  puts "You are a very poor student"
else
  puts "You failed this class"
end

#Switch - case with numbers:
credit_score = 750
puts "Credit Score: ".concat(credit_score.to_s)
case(credit_score)
when 750..850
  puts "You have an excellent credit"
when 650..749
  puts "You are approved for a lane"
when 500..649
  puts "You are approved for less"
else
  puts "You are not approved"
end