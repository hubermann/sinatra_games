module GamesApi
  class Mines
    attr_accessor :width, :height, :mines, :rows, :local

    def initialize(width, height, mines)
      @width = width
      @height = height
      @mines = mines
      @rows = []
      @local = []
    end

    def showmsg
      "iniciando nuevo W:#{width} H:#{height} M:#{mines}"
    end

    def create_new
      width.times do
        rows << create_columns
      end
      #duplicar rows
      rows.each{|e| local << e.dup}
      minate
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
      rows.each_with_index do |pos, i|
        pos.each_with_index do |posi, ind|
          local[i][ind]="BOMBA" if bombs.include? iter
          iter +=1
        end
        iter +=1
      end
    end

    def show_cols
      rows
    end

    def show_local
      local
    end

  end
end
