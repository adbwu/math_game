class Game 
  attr_accessor :question

  def initialize
    puts "Game initialized"
  end

  def generate_question
    num1 = 1
    num2 = 2
    operator = +
    return "What is ${num1} ${operator} ${num2}?"
  end


end