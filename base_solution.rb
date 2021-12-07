class BaseSolution
  attr_accessor :input_file, :output

  def initialize(input_f)
    @input_file = input_f
  end

  def run_solution
    input = File.read(@input_file).chomp
    @output = solution_code(input)
    puts "Your answer is #{@output}"
    @output
  end
end
