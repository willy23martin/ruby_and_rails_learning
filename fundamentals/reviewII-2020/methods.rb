# Methods or functions:

def method_a
  puts 'My method A'
end
method_a

def method_param(p1)
  puts 'Method B with param: '.concat(p1.to_s)
end
method_param(56)

def method_param_other p1
  puts 'Method B with param other: '.concat(p1.to_s)
end
method_param_other(56)

def method_variable_params(*args)
  puts args.sum
end
method_variable_params(1,2,3)
method_variable_params(1,2,3,4,5,6,7,8,9) #45

def method_default_param param=0.02
  puts "The discount is: #{param}"
end
method_default_param
method_default_param(0.05)

def method_without_order(age:, name:, telephone:'nil')
  customerData = {
      age: age,
      name: name,
      telephone: telephone
  }
  puts "The customer data is: \n".concat(customerData.to_s)
end
method_without_order(name:'Martin',telephone:'3122322', age: 35)
method_without_order(name:'Martin', age: 35)

# Methods with blocks
def method_with_block(p,&block)
  if block_given?
    yield(p)
  else
    puts "The param: #{p}"
  end
end

