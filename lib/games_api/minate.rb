class Minate 

    def initialize(qty_of_positions, mines_required=6)
      @qty = qty_of_positions
      @required = mines_required
    end
  
    def generator
      @mines =[]
      @required.times do 
        @mines << rand(0..@qty)
      end
      if find_duplicates == nil
        return @mines.sort!
      else
        generator
      end
    end
    
    def find_duplicates
      @mines.detect{ |e| @mines.count(e) > 1 }
    end
  
    def final 
      generator
    end
  
  end