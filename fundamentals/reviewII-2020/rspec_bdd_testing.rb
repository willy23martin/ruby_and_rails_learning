=begin
RSPEC - BDD/TDD testing gem for Ruby / RoR applications
=end

class Test
  def self.test_class
    return 89
  end

  def self.number_failure_test(number)
    if(number==0)
      raise ZeroDivisionError
    else
      return 10/number
    end
  end
end

puts Test.number_failure_test(20)

describe 'Test.test_class' do
  it 'should be 89' do
    expect(Test.test_class).to be(89)
  end
end

describe Test do

  describe 'Test' do
    it '#{test_class}' do
      expect(Test.test_class).to be(89)
    end
  end

  describe 'Test.number_failure_test' do
    # Reference: https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher
    it 'number_failure_test' do
      expect(Test.number_failure_test(0)).to raise_error
    end
  end

  context 'when @number == 0' do
    # Reference: https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher
    it 'number_failure_test' do
      expect(Test.number_failure_test(0)).to raise_exception(ZeroDivisionError)
    end
  end
end