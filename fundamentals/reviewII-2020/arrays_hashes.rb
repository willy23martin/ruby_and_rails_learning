# Arrays: sorted list of elements
array_a = [1,'2',3,4]
puts array_a
array_b = Array.new
puts array_b
array_nil_four = Array.new(4)
puts array_nil_four
array_c = Array.new(4,'Element')
puts array_c
array_d = []
array_d[0]='firstElement'
puts array_d[0]
puts array_d.[](0)

array_d.push(5) #Last element
array_d.pop # Gets 5 and removes it from the array
array_d << 5 # Array with the last element 5
puts array_d
array_d.concat([2,5,6]) # Do not modify the array
array_d.+([5,6,7]) # Modify the array
array_d.replace(array_c)

complex_array = [0, [1,2], [3], 4, 5]
complex_array.flatten # Other object
puts complex_array
puts complex_array.flatten! # same object

puts complex_array.reverse
puts [1,4,2].sort!
puts complex_array.join('**')

puts [2,2,4,5,2,4,6].uniq! #Delete duplicated values

complex_b = complex_array # Same memory reference!!
complex_b[3] = 'Modified'
puts complex_array
puts complex_b

complex_b = complex_array.dup
complex_b[3] = 'Modified other array'
puts complex_array
puts complex_b

puts 'Size'.+ complex_b.size.to_s
puts complex_array.empty?


=begin
Hashes:
=end

# Hash: key-value pairs
hash_a = {
    key_1: 'value1',
    key_2: 'value2'
}
puts hash_a

hash_default = Hash.new('default-value')
puts hash_default
puts hash_default[:key1] #Key does not exist
hash_default[:keyA] = 'Nimber A'
puts hash_default[:keyA]
puts hash_a[:key_3]

puts hash_a.merge! hash_default #Same keys, the value of the second hash rewrites the value of that key
puts hash_a.invert
puts hash_a.values
puts hash_a.keys
