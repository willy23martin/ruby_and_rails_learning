=begin
REGULAR EXPRESSIONS
=end

string ="Automobile"
string2="Automechanic"
string3 = "MochiAuto"

def reg_match_with_word(string1, string2)
  if(string1 =~ /#{string2}/)
    puts "String matches"
  else
    puts "No match"
  end
end

reg_match_with_word(string, string2)
reg_match_with_word(string, "automobile".capitalize)

def reg_match_beginning_word(string1, string2)
  if(string1 =~ /^#{string2}/)
    puts "String matches at the beginning"
  else
    puts "No match"
  end
end

reg_match_beginning_word(string2, "auto".capitalize)

def reg_match_ends_word(string1, string2)
  if(string1 =~ /#{string2}$/) # /.#{string2}$/ is equivalent
    puts "String matches at the end"
  else
    puts "No match"
  end
end

reg_match_ends_word(string3, "auto".capitalize)