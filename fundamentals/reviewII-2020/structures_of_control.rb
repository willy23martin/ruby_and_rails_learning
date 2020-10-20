=begin
Conditionals
=end

#if-else:
a=10
b=23
if a==b
  puts 'Are equal'
end

if a>b
  puts 'A < B'
elsif a<b
  puts 'A > B'
else
  puts 'Are equal'
end

if a>30
  puts 'Less than 30'
end

#Elegant not if conditional
unless a>30
  puts 'Less than 30'
end

# Case:
case a
when 30, 40
  puts '30 or 40'
when 10
  puts 'Equal to 10'
when a.even?
  puts 'The number is even'
when a.odd?
  puts 'The number a is odd'
else
  puts 'Nor defined'
end

=begin
Loops
=end

# loop {puts 'Simple loop'} #ADVICE: infinite loop

=begin
#ADVICE: infinite loop
loop do
  puts 'Simple 2 loop'
end
=end

n=1
loop do
  next unless n>=10
  n = n.+1
  break
end

n=1
while n<10
  puts n
  n.+1
end

n=1
until n>=10
  puts n
  n= n+1
end

# Block loop:
def my_loop
  n = 1
  m=n
  yield(m) while n==13
  n.+1
end

my_loop do |m|
  puts "Number n: #{m}"
end

# Others:

10.times do |i|
  puts i
end

array = [10,11,15,20,22,27]
puts array
=begin
array.length.times do |i|
  puts array[i]
end
=end

