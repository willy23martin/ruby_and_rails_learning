# Classes

class Contact

  attr_accessor :name, :telephone # Replace getters and setters
  attr_reader :telephone # Replace getters
  attr_writer :name # Replace setters

  def initialize(name, telephone)
    @name = name
    @telephone = telephone
  end

  def get_name
    return "The name of the contact: #{@name}"
  end

  def set_name(name)
    @name = name
  end

  def place_call
    call
  end

  # Class method
  def self.method_a
    puts "Class method"
  end

  #Private methods
  private

  def call
    puts "Calling contact #{self.name} to telephone #{@telephone}"
  end

end

contactA = Contact.new('WMC', '3399999')
puts contactA.get_name
contactA.set_name('WMC 2')
puts contactA.get_name
puts contactA.name
puts contactA.telephone
contactA.place_call

puts Contact.method_a

# Inheritance
class TelemarketingContact < Contact

  attr_accessor :telemarketing_code

  def initialize(id, name, telephone)
    super(name,telephone)
    @telemarketing_code=id
  end

end

# Constants:

class Constant
  CONSTANT_B = 26
end
puts Constant::CONSTANT_B

