class Score

  attr_reader :playerOne, :playerTwo
  attr_accessor :turn

  def initialize
    @playerOne = Players.new(1, true)
    @playerOne = Players.new(1, false)
  end

  def game 
    puts "one is #{playerOne.turn}"
    puts playerTwo.turn
    while(@playerOne.score > 0 || @playerTwo.score > 0) do
      question = Questions.new()
      if @playerOne.turn
        puts Questions.question
        if Questions.result
          puts "YES! Your are correct."
        else
          puts "SEriously? No!"
          @playerOne.score -= 1
        end

        @playerOne.turn = false
        @playerTwo.turn = true

      elsif @playerTwo.turn
        puts Questions.question
        if Questions.result
          puts "YES! Your are correct."
        else
          puts "Seriously? No!"
          @playerTwo.score -= 1
        end

        @playerOne.turn = true
        @playerTwo.turn = false

      end

      if @playerOne.score == 0
        puts "Player 2 wins with a score of #{@playerTwo.score}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        exit
      elsif @playerTwo.score == 0
        puts "Player 1 wins with a score of #{@playerTwo.score}/3"
        puts "----- GAME OVER -----"
        puts "Good bye!"
        exit
      else
        puts "P1: #{@playerOne.score}/3 vs P2: #{@playerTwo.score}/3"
        puts "----- NEW TURN -----"
      end
    end
  end
end



