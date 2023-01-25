class Game 
  attr_accessor :question, :answer

  def initialize
    puts "Game initialized"
  end

  def generate_question
    num1 = 1
    num2 = 2
    operator = "+"
    @question = "What is #{num1} #{operator} #{num2}?"
    @answer = num1.send(operator, num2)
  end
end