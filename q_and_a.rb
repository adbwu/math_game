class QuestionAnswer
  attr_accessor :question, :answer

  def initialize
  end

  def self.generate_question
    operators = ["+", "-", "*"]
    num1 = rand(12)
    num2 = rand(12)
    operator = operators[rand(3)]
    @question = "What is #{num1} #{operator} #{num2}?"
    @answer = num1.send(operator, num2)
  end

  def self.check_answer(player_answer)
    if player_answer == @answer
      return true
    end
    return false
  end

  def self.quiz
    self.generate_question
    puts @question
    player_answer = gets.chomp.to_i
    correct = self.check_answer(player_answer)
    return { "player_answer": correct, "answer": @answer } 
  end
end