=begin
LOOPING
=end

#For loop:
for i in 1..10 #certain condition
  puts "The question is the #{i})"
end

#While and Until loops:
x = 20
number = 25
# while the condition is true it will continue
while x <= number do #certain condition
  puts "Number will be reached by x: #{x}"
  x+=1
end

y = 20
limit = 25
# while the condition is false it will continue
until y > limit do #certain condition
  puts "#Y will be reached by Limit: #{limit}"
  limit -= 1
end

#More examples:
#Times: only can use in integers:
10.times do
  puts "10 times Ruby"
end

# Get array elements:
countries = ["Germany", "Holland", "Colombia"]
countries.sort!.each do |country|
  puts "Country with each #{country}"
end

for country in countries
  puts "Country with for #{country}"
end

countries.reverse!.each { |country| puts "Country with arch another syntax: #{country}"}
