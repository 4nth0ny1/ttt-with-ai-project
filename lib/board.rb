class Board 
   attr_accessor :cells

   def initialize
        reset!
   end

   def reset!
        @cells = Array.new(9, " ")
   end

   def display 
        puts " #{cells[0]} | #{cells[1]} | #{cells[2]} " 
        puts "-----------"
        puts " #{cells[3]} | #{cells[4]} | #{cells[5]} " 
        puts "-----------"
        puts " #{cells[6]} | #{cells[7]} | #{cells[8]} " 
   end 

   def position(input)
        cells[input.to_i-1]
   end

   def full?
        cells.each do |cell|
            if cell == " "
                return false
            end
        end
    end

    def turn_count
        ## insert non-empty strings in array and return the length of the array  
        ##this also works
        # cells.count{|char| char=="X" || char=="O"}
        count = []
        cells.each do |cell|
            if cell != " "
                count << cell
            end 
        end
        count.length    
    end

    def taken?(input)
        ## if the position == "X" or "O" return true
        position(input)=="X" || position(input)=="O"
    end

    def valid_move?(input)
        ## user input between 1-9
        ## not a taken space
        !taken?(input) && input.to_i.between?(1, 9)
    end

    def update(input, player)
        ## updates the cells in the board with the player token according to the input
        cells[input.to_i-1] = player.token
    end
end 