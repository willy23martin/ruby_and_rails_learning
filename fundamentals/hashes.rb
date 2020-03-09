=begin
HASHES: key-value-like dictionaries
=end

grades = {"John" => 3.8,
          "Danny" =>3.5,
"William Chávez" => 5.0,
          "Ruby" => 3.8
}
puts grades
puts grades.class
puts grades["John"]
puts grades.values
puts grades.keys

#Find key based on value:
puts grades.key(3.8)

#Create new Hash instance
s = Hash.new
s["Randy"] = 3.8
s["Willy"]=5.0
s["Jaime"]=4.9
s["Rubiela"] = 100
puts s

# Get all the key-value pairs:
s.each do |key, value|
  print "{#{key}:#{value}"
  print "},"
end
