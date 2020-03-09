=begin
CLASSES: blue print from which objects can be created
=end

class Dog
  def name_of_dog(name)
    puts "I am " + name.to_s
  end
  def bark
    puts "I am barking"
  end
  def eat
    puts "I am eating"
  end
  def sleep
    puts "I am sleeping"
  end
  def play
    puts "I am playing"
  end
end

#Creating objects from class Dog:
yackrouser = Dog.new
yackrouser.name_of_dog("Lucky")
yackrouser.bark
yackrouser.eat
yackrouser.sleep
yackrouser.play

labrador = Dog.new
labrador.name_of_dog("Max")
labrador.play

terrier = Dog.new
terrier.name_of_dog("Dan")
terrier.eat
terrier.sleep

