class Game 
  attr_accessor :question, :answer

  def initialize
    puts "Game initialized"
  end

  def generate_question
    operators = ["+", "-", "*"]
    num1 = rand(12)
    num2 = rand(12)
    operator = operators[rand(3)]
    @question = "What is #{num1} #{operator} #{num2}?"
    @answer = num1.send(operator, num2)
  end

  def check_answer(player_answer)
    if player_answer == @answer
      puts "Correct!"
    else
      puts "Wrong! The correct answer is #{@answer}! You lose a life!"
    end
  end
end