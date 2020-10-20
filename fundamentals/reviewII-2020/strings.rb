# Object: '' or ""
=begin
"#{variable}" - Interpolation.
=end

puts "The result is #{45*89}"

#Methods:
# 1) Uppercase:
lyrics = "This is a lyric"
puts lyrics.upcase
puts lyrics.reverse
puts lyrics.include?('This')
puts lyrics.start_with?("Th")
puts lyrics.size
puts lyrics.empty?
lyrics == 'This is a lyric'
lyrics.==("This is a lyric")
puts lyrics.object_id

# Gets:
print "Enter a value: "
custom_imput = gets.chomp
puts "The input received was: #{custom_imput}"
