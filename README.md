# Advent of code runner

This is a central place to hold te advent of code and run the
various different solutions on each day.

Each day, copy day-x and rename it with the appropriate day.
Then within that day, you should modify the data folder to
contain the relevant data:
input.data ==> The actual data for the day
sample.data ==> The sample data given on the instruction page
sample.answer.1 ==> The answer given for part 1.
sample.answer.2 ==> The amswer given for part 2. Note that you won't get this until after you solve part 1.

You can then modify solution.rb to solve the problem of the day.

Running `ruby generic.rb` will allow you to run the sample data through your code and test with sample answers,
let you run the rspec tests you have written in solution.rb (if any) and run the actual solution
against the given data.

Prerequisite `gem install tty-prompt`
