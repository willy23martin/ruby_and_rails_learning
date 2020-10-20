# Blocks: good for make iterators over arrays or hashes
def block_test
  puts 'the method'
  yield if block_given?
  puts 'the method again'
end

block_test do
  puts 'the block!'
end

def another_block(&block)
  puts 'The second method'
  block.call if block_given?
  puts 'The second method has finished'
end

another_block do
  puts 'Another block'
end

def yield_param_block(&block)
  puts 'Yield with param'
  yield(100)
  puts 'Yield with param has finished'
end

yield_param_block do |param|
  puts "The number received by parameter was: #{param}"
end

def yield_multiple_param(&block)
  puts 'Yield with multiple params'
  yield(101,'Number')
  puts 'Finishing multiple params'
end

yield_multiple_param do |paramA, paramB|
  puts "Multiple params received: #{paramA} and #{paramB}"
end

# block_test {puts 'the block'}

#Procs and lambdas:

a = Proc.new {puts 'New proc'}
a = proc{puts "New a proc"}
a.call

b = lambda {puts "Proc b lambda"}
b = -> {puts "Proc b lambda syntax"}
b.call