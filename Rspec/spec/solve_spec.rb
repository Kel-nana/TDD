require 'rspec'
require_relative '../../solve'

describe 'test Solve class methods' do
  let(:solver) { Solver.new }
  describe 'Test the factorial method' do
    it 'Should take an integer' do
      expect(solver).to receive(:factorial).with(an_instance_of(Integer))
      solver.factorial(4)
    end

    it 'Should return 1 for for 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'Should return the factorial of 4' do
      expect(solver.factorial(4)).to eq(24)
    end

    it 'Should raise an argument error for negative values' do
      expect { solver.factorial(-4) }.to raise_error(ArgumentError, 'Factorial does not defined negative numbers')
    end
  end

  describe 'Reverse method' do
    it 'Should take a string' do
      expect(solver).to receive(:reverse).with(an_instance_of(String))
      solver.reverse('hello')
    end

    it 'Sould return a reversed string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe 'FizzBuzz method' do
    it 'Should take a number' do
      expect(solver).to receive(:fizz_buzz).with(an_instance_of(Integer))
      solver.fizz_buzz(3)
    end

    it 'Should return FizzBuzz when the argument is divisible by both 3 and 5' do
      expect(solver.fizz_buzz(15)).to eq('fizzBuzz')
    end

    it 'Should return Fizz when the argument is divisible by 3' do
      expect(solver.fizz_buzz(3)).to eq('fizz')
    end

    it 'Should return Buzz when the argument is divisible by 5' do
      expect(solver.fizz_buzz(5)).to eq('buzz')
    end
  end
end
