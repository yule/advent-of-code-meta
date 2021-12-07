require_relative '../base_solution'
require 'rspec'

#TODO FOR EACH DAY REPLACE THE CLASS NAME TO BE NUMBERED CORRECTLY
# e.g. for day 6 this class should be called Day6
class DayX < BaseSolution
  def solution_code(input)
    # Write your code here
    values = input.split("\n").map{|a| a.chomp.to_i }
    # and return your answer
    values
  end
end

RSpec.describe 'the day' do
  it 'should work ok' do
    # Your custom tests
    expect(1 + 1).to eq(2)
  end
end
