module GamesApi
  class Mines
    attr_accessor :width, :height, :mines

    def initialize(width, height, mines)
      @width = width
      @height = height
      @mines = mines
    end

    def showmsg
      "iniciando nuevo W:#{width} H:#{height} M:#{mines}"
    end

    def create_new
      cols=[]
      width.times do
        cols << create_columns
      end
      cols
    end

    def create_columns
      "x"
    end

  end
end
