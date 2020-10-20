# Iterators: we use blocks

array = ['a', 'b', 'c', 'd']

array.each do |elem|
  puts elem
end

hash = {
    a: 1,
    b: 2,
    c:3,
    d:4
}

hash.each do |key,value|
  puts "key: #{key} and value: #{value}"
end

array.map do |element|
  return element.to_s.concat('**')
end
puts array


