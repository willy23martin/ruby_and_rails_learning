=begin
INHERITANCE: propertie of OOP in which classes can be extend from another
and not only inherit its properties and methods, but also override its
behavior in the child class. The relation is ChildClass < ParentClass
=end
class Customer
  @@accounts = Array.new
  @@number_of_accounts = 0
  def initialize(name)
    @name = name
  end
  def addAccount(account)
    @@accounts.append(account)
    @@number_of_accounts += 1
  end
  def listAccounts
    return @@accounts
  end
end

class Account
  def initialize(id, number, money)
    @id = id
    @number = number
    @money = money
  end
  def taxes
    puts "Taxes: #{@money * 1.5}"
  end
end

class CurrentAccount < Account
  def taxes
    puts "Current Taxes: #{@money*2.5}"
  end
end

class DebitAccount < Account
  def taxes
    puts "Debit Taxes: #{@money * 1.5}"
  end
end

customer = Customer.new("William")
current_account = CurrentAccount.new("1102", "45644", 10000)
debit_account = DebitAccount.new("4521", "67339", 10000)
customer.addAccount(current_account)
customer.addAccount(debit_account)
puts customer.listAccounts.to_s
puts customer.listAccounts[0].to_s
puts customer.listAccounts[1].to_s
customer.listAccounts[0].taxes
customer.listAccounts[1].taxes