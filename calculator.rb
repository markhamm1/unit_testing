require 'rspec'
class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end
  def subtract(number_one, number_two)
    return number_one - number_two
  end
  def multiply(number_one, number_two)
    return number_one * number_two
  end
  def divide(dividend, divisor)
    return dividend / divisor.to_f
  end
  def square(number)
    return number * number
  end
  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end
  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(7, 2)
      expect(result).to eq(5)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.subtract(-9, -3)
      expect(result).to eq(-6)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(15, 3)
      expect(result).to eq(45)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.multiply(-7, 9)
      expect(result).to eq(-63)
    end
  end
  describe '#divide' do
    it 'should return quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(100, 20)
      expect(result).to eq(5)
    end
    it 'should work with negative numbers' do
      calculator = Calculator.new
      result = calculator.divide(9, -3)
      expect(result).to eq(-3)
    end
  end
  describe '#square' do
    it 'should return a number squared' do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
  end
  describe '#power' do
    it 'should return a number to the nth power' do
      calculator = Calculator.new
      result = calculator.power(9, 4)
      expect(result).to eq(6561)
    end
  end
  
end