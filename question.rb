class Question
  attr_reader :num1, :num2, :solution

  def initialize(p)
    @player = p
    @num1 = rand(20)
    @num2 = rand(20)
    @solution = self.num1 + self.num2
  end

  def question
    puts "#{@player}: What does #{num1} plus #{num2} equal?"
    gets.chomp.to_i == self.solution
  end
end
