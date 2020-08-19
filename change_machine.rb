require 'rspec'

# class ChangeMachine
#   def change(number)
#     coins = []
#     while number > 0
#       if number > 24
#         coins << 25
#         number -= 25 
#       elsif number > 9
#         coins << 10
#         number -= 10
#       elsif number > 4
#         coins << 5
#         number -= 5
#       else
#         coins << 1
#         number -= 1
#       end
#     end
#     return coins
#   end
# end

class ChangeMachine
  def change(number)
    coins = []
    while number > 24
      coins << 25
      number -= 25
    end
    while number > 9
      coins << 10
      number -= 10
    end
    while number > 4
      coins << 5
      number = number - 5
    end
    number.times do
      coins << 1
    end
    return coins
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it 'should return [1,1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1,1])
    end
    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end
    it 'should return [5,1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5,1])
    end
    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end
    it 'should return [10,5,1,1,1] when given 19' do
      machine = ChangeMachine.new
      expect(machine.change(19)).to eq([10,5,1,1,1,1])
    end
    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end
    it 'should return [25,10,5,1,1,1] when given 43' do
      change_machine = ChangeMachine.new
      result = change_machine.change(43)
      expect(result).to eq([25,10,5,1,1,1])
    end
    it 'should return [[25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119' do
      change_machine = ChangeMachine.new
      result = change_machine.change(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end

  end
end