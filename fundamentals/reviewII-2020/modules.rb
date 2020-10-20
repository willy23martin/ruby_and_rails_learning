=begin
Modules:
- namespaces
- contain methods
- improve re-usability of code
=end

module ContactsModule
  CONST_T=10
   def init_module
     puts "Initializing module: ContactsModule..."
   end

   class ContactY
     attr_accessor :name
     def initialize name=''
       @name = name
       puts "Initializing ContactX inside ContactsModule, with name: #{@name}"
     end
   end

end

module ContactsExtendModule
  def init_extend_module id
    puts "Extend module intialized: #{id}"
  end
end


class ContactX
  include ContactsModule # Instance method
  extend ContactsExtendModule # Class method
end

contactX = ContactX.new
contactX.init_module #Instance method
ContactX.init_extend_module(56) # Class method

contactY = ContactsModule::ContactY.new('WMCY')
puts contactY

puts ContactsModule::CONST_T
