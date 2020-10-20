=begin
Exercise Classes and Modules
=end

#1) Persona, nombre, apellido, edad; con métodos nombre completo e iniciales

class Person
  attr_accessor :name, :last_name, :age

  def initialize (name='', last_name='', age=18)
    @name = name
    @last_name = last_name
    @age = age
  end

  def full_name
    puts "The full name: #{@name} #{@last_name}"
  end

  #Reference: https://stackoverflow.com/questions/2730854/ruby-how-to-get-the-first-character-of-a-string
  def name_initials
    puts "Initials: #{@name[0]}#{@last_name[0]}"
  end

end

personA = Person.new('WMC', 'Pérez', 26)
personA.full_name
personA.name_initials

=begin
2) Class Tell
- Number of sides
- Method: roll
=end

class Tell
  attr_accessor :sides
  @@number_sides = 0
  def initialize(sides)
    @sides=sides.to_i
    if(@sides < 1)
      raise ArgumentError, 'Wrong sides initialization, must be at least 1'
    end
    @@number_sides+=1
  end

  def roll
    return rand(1...@sides) # .. - Between 1 and @slides || ... Between 1 and @slides but excluding @slides
  end

  def self.number_slides
    puts 'Number of slides: '.concat(@@number_sides.to_s)
  end

end

tell = Tell.new(25)
puts tell.roll
puts Tell.number_slides
