=begin
STRING METHODS:
When a method finishes with a ! character
it means it will modify the original variable´s value
=end


#Contact: appends the new String value to another string
puts "Hola".concat(" William")
firstName = "William"
lastName=" Chavez"
puts firstName.concat(lastName)

#Upcase: converts the string value into upper case
city="Cali"
puts city.upcase # Does not modify the original variable´s value
puts city
puts city.upcase! #Modofies the original variable´s value
puts city

#Downcase:
state ="DONE RIGHT"
puts state.downcase
puts state
puts state.downcase!
puts state

#Delete: deletes the character or string value from the previous
country = "Colombia"
puts country.delete("m")
puts country.delete("C")
puts country

#Replace: replace the original string for a newone
country = "Japón"
puts country.replace("Greece") #Modifies the original value
puts country

#Capitalize: capitilizes the first letter of the string
state2 = "answered"
puts state2.capitalize # Does not modify the original value
puts state2

#Reverse: reverses the characters of the string:
palindromo = "Amor a la roma"
puts palindromo.reverse
puts palindromo

#length: counts the number of characters (bytes) of the string
message = "WhatsApp message"
puts message.length #Includes the blank characters
puts message

#Strip: removes the white spaces on the left side and right side of the string
# Very useful
song = " Sweet but pshyco "
puts song.strip
puts song
puts song.lstrip #Removes only left white spaces
puts song.rstrip #Removes only right white spaces
puts song

#Gsub: substitutes the string value with the new string:
country = "United Kingdom"
puts country.gsub("Kingdom", "States")
puts country
puts country.gsub!("Kingdom", "States")
puts country

#Include?: determines if a string is included into the original
accountability="Software architecture"
puts accountability.include?(" arch")
puts accountability