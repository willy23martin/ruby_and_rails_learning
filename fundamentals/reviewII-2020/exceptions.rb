# Exception handling:

print 'Insert a number: '
number = gets.to_i
begin
  puts 10 / number
rescue
  puts 'ERROR! was your number a zero'
  #exit
end

print 'Insert a number: '
number = gets.to_i
begin
  puts 10 / number
rescue ZeroDivisionError
    puts 'ERROR! was your number a zero'
    #exit
end

print 'Insert a number: '
number = gets.to_i
begin
  if number == 0
    raise ZeroDivisionError,'Number must not be equal to zero'
  else
    puts 10 / number
  end
end

print 'Insert a number: '
number = gets.to_i
begin
  puts 10/number
rescue ZeroDivisionError
  puts 'An error happen'
ensure
  puts 'Final statement after error handling'
end

try = 3
print 'Insert a number: '
number = gets.to_i
begin
  puts 10/number
rescue
  try -= 1
  retry if try > 0
end


#ZeroDivisionError
puts 1/0
ZeroDivisionError
# RuntimeError
raise
RuntimeError
#NoMethodError
a.metodo()
NoMethodError
#NameError
puts b
NameError
#IOError
STDIN.puts('Is not possible')
IOError
#Errno::error
File.open(-12)
Errno::error
#TypeError
x=3 + 'Cannot add a String'
puts x
TypeError
#ArgumentError
def m(x=9); end; m(2)
ArgumentError