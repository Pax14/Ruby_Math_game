class Questions

  attr_accessor :question, :result

  def initialize
    @firstNum = rand(1..20)
    @secondNum = rand(1..20)
    @answer = @firstNum + @secondNum
    @question = "What does #{@firstNum} plus #{@secondNum} equal?"
    @response = nil
    @result = nil
  end

  def finalAnswer
    @response = gets.chomp.to_i

    if @response = @answer
      @result = true
    else
      @result = false
    end
  end
end
