module Players 
    class Human < Player 
        
        def move(board)
            puts "Make your move"
            gets.strip
        end 
    end 
end 