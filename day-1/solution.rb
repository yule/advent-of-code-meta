require_relative '../base_solution'
require 'rspec'

class Day1 < BaseSolution
  def solution_code(input)
    # Write your code here
    depths = input.split("\n").map{|a| a.chomp.to_i }
    count = 0
    current = 0
    depths.each_cons(3) do |a,b,c|
      new_val = a + b + c
      if new_val > current
        count = count + 1
      end
      current = new_val
    end
    count - 1
  end
end

RSpec.describe 'day 1' do
  it 'should work ok' do
    # Your custom tests
    expect(1 + 1).to eq(2)
  end
end
