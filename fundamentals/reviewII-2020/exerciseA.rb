# Show information about a username:
print "Please insert your name: "
name = gets.chomp
print "Please insert your lastname: "
lastname = gets.chomp
puts "Welcome Mr. #{lastname.lstrip.rstrip}. Your username will be: #{name.lstrip.rstrip.concat(" ".+lastname.lstrip.rstrip)}"