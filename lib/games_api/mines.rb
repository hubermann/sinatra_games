module GamesApi
  class Mines
    attr_accessor :width, :height, :mines, :local_board

    def initialize(width, height, mines)
      @width = width
      @height = height
      @mines = mines
    end

    def showmsg
      "iniciando nuevo W:#{width} H:#{height} M:#{mines}"
    end

    def create_new
      rows=[]
      width.times do
        rows << create_columns
      end
      self.local_board = rows  #duplicar rows
      minate
      #rows
      local_board
    end

    def create_columns
      cols=[]
      height.times do
        cols << 'X'
      end
      cols
    end

    def minate
      # a generar en random
      bombs = [12, 22, 35, 41, 58]
      iter = 0
      local_board.each_with_index do |pos, i|
        pos.each_with_index do |posi, ind|
          puts_mine(i, ind) if bombs.include? iter
          iter +=1
        end
        iter +=1
      end
    end

    def puts_mine(a,b)
      local_board[a][b] = "B"
    end

  end
end
