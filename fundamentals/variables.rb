=begin
VARIABLES
Types:
- Instance variables.
- Class Variables.
- Global variables.
- Local variables.
- Constants.
=end

#- Instance variables: are used by instance methods. Apply to the object.
#  and starts with @. Its scope is for the object not for the instance methods.
# For real-time programming in Ruby.
class Customer
  def initialize(id, name, address)
    @cust_id = id
    @name = name
    @addr = address
  end
  def customer_details
    puts "Customer ID is #{@cust_id}"
    puts "Customer´s name is #{@name}"
    puts "Customer´s address is #{@addr}"
  end
end
customer = Customer.new("11021", "William Chávez", "Calle 18")
customer.customer_details

#- Class variables: are used by the class and also can be
#  shared among the descendants. Starts with @@.
class Customer
  @@no_of_customers = 0
  def initialize(id, name, address)
    @cust_id = id
    @name = name
    @addr = address
    @@no_of_customers += 1
  end
  def customer_details
    puts "Customer ID is #{@cust_id}"
    puts "Customer´s name is #{@name}"
    puts "Customer´s address is #{@addr}"
  end
  def number_of_customers
    puts "Total of customers: #{@@no_of_customers}" # Apply to the class not to the object.
  end
end
customer = Customer.new("11021", "William Chávez", "Calle 18")
customer.customer_details
customer2 = Customer.new("11521", "Pepita Pérez", "Calle 18")
customer2.customer_details
customer.number_of_customers #2
customer2.number_of_customers #2

#- Global variables: are used thorough the program.
# We can use them anywhere in the program.
# Start with $ - not recommended to use in OOP, but constants.
$age = 29
class C1
  def print_global_c1
    puts "Global variable in class 1 is #{$age}"
  end
end
g1 = C1.new
g1.print_global_c1

#- Local variables: are used inside the method and are
# normally hard coded values.
class Car
  def type
    type = "Toyota"
    puts "Car type is #{type}" # Its scope is the method.
  end
  def another
    puts "Type is not a class or instance method #{type}"
  end
end
c1 = Car.new
c1.type
c1.another

#- Constants: variables that are permanent and cannot change.
# Always written in upper case.
PI = 3.1416
class Circle
  def initialize(radio)
    @radio = radio #It cannot be outside the initialize method.
  end
  def area
    puts "The circle´s area is: #{PI*@radio*@radio}"
  end
end
circle = Circle.new(2.0)
circle.area