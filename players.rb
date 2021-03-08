class Players

  attr_accessor :score, :turn, :id

  def initialize(id, turn)
    @score = 3
    @turn = turn
    @id = id
  end

end
