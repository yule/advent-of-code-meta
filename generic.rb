require 'tty-prompt'
require 'rspec'

include ::RSpec::Matchers

def run_day(day_num)
  data = "day-#{day_num}/data/input.data"
  run_with_data(day_num, data)
end

def run_with_data(day_num, data)
  require_relative "day-#{day_num}/solution"
  day = Kernel.const_get("Day#{day_num}").new(data)
  day.run_solution()
end

def test_day(day_num, part)
  data = "day-#{day_num}/data/sample.data"
  output = run_with_data(day_num, data)
  expected = File.read("day-#{day_num}/data/sample.answer.#{part}").chomp
  # Convert both to strings to save type checking
  puts "Passed OK" if expect(output.to_s).to eq(expected.to_s)
end

def run_specs(day_num)
  puts "Running Specs for #{day_num}"
  puts `rspec day-#{day_num}/solution.rb`
end


# Get all the days
days = Dir.glob('*').select {|f| File.directory? f}.map{|a|a.split('-').last.to_i}.reject{|b| b == 0}
top_day = days.max

prompt = TTY::Prompt.new
choices = %w(run-day run-specs test-day-part-1 test-day-part-2 exit)
while (choice = prompt.select("Select choice", choices)) != 'exit'
  day = prompt.ask("Which day") { |q| q.in("1-#{top_day}") }
  run_day(day) if choice == 'run-day'
  test_day(day, 1) if choice == 'test-day-part-1'
  test_day(day, 2) if choice == 'test-day-part-2'
  run_specs(day) if choice == 'run-specs'
  puts "-"*20
end




