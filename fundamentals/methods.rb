=begin
METHODS
=end

def add(number1, number2)
  if number1.class == Integer and number2.class == Integer
    puts "The addition between #{number1} and #{number2} is equal to: #{number1+number2}"
  else
    puts "You have to introduce only two numbers"
  end
end

add(5,7)

#Default-value functions:
def addDefault(number3=4, number4) #number3 is always 4
  if number3.class == Integer and number4.class == Integer
    puts "The addition between #{number3} and #{number4} is equal to: #{number3+number4}"
  else
    puts "You have to introduce only two numbers: #{number4.class}"
  end
end

"Default-value function: " + addDefault(7).to_s