class BingoBoard
  def initialize
    @board =  [[47, 44, 71, 8, 88],
               [22, 69, 75, 65, 73],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]
    # @board = Array.new(5) {Array.new(5.times.map{rand(1..100)})}
  end

  def ball_picker
    @bingo = "BINGO".chars
    @num = *(1..100)
    @ball = [@bingo.sample, @num.sample]
  end

  def checker
    p @ball
    if @ball[0] == "B"
      @board.each do |sub_array|
        sub_array.map! do |num|
          num == @ball[1] ? "X" : num
        end
      end
    elsif @ball[0] == "I"
      @board.each do |sub_array|
        sub_array.map! do |num|
          num == @ball[1] ? "X" : num
        end
      end
    elsif @ball[0] == "N"
      @board.each do |sub_array|
        sub_array.map! do |num|
          num == @ball[1] ? "X" : num
        end
      end
    elsif @ball[0] =="G"
      @board.each do |sub_array|
        sub_array.map! do |num|
          num == @ball[1] ? "X" : num
        end
      end
    elsif @ball[0] == "O"
      @board.each do |sub_array|
        sub_array.map! do |num|
          num == @ball[1] ? "X" : num
        end
      end
    end
    print_board
  end

  # def checker
  #   @board.each do |sub_array|
  #     sub_array.map! do |num|
  #       num == @ball[1] ? "X" : num
  #     end
  #   end
  #   print_board
  # end

  def print_board
    @board.each do |row|
      p row
    end
  end

end

board = BingoBoard.new
# 5.times do
board.ball_picker
board.checker
# end
