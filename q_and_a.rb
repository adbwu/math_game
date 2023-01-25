class QuestionAnswer
  attr_accessor :question, :answer

  def initialize
    puts "Question initialized"
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
      return true
    else
      return false
    end
  end

  def quiz
    q_and_a.generate_question
    puts q_and_a.question
    answer = gets.chomp.to_i
    return check_answer(answer)
  end