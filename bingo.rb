class BingoBoard
  def initialize
    @board = Array.new(5) {Array.new(5.times.map{rand(1..100)})}
  end

  def ball_picker
    @bingo = "BINGO".chars
    @num = *(1..100)
    @ball = [@bingo.sample, @num.sample]
  end

  def checker
    @board.each do |sub_array|
      sub_array.map! do |num|
        num == @ball[1] ? "X" : num
      end
    end
    print_board
  end

  def print_board
    @board.each do |row|
      p row
    end
  end

end

board = BingoBoard.new
5.times do
  board.ball_picker
  board.checker
end
