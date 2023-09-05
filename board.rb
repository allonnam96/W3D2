class Board 
    def initialize(size)
        @size = size
        @grid = Array.new(size){Array.new(size,"-")}
    end 

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos,value)
        row, col = pos
        @grid[row][col] = value
    end

    def empty?(pos)
        self[pos] == '_'
    end

    def populate
        num_cards = (@size * @size) / 2
        card = []
        num_cards.times do
        card_value = ('a'..'z').to_a.sample(5).join('')
        card << Card.new(card_value)
        end    
        i = 0
        while i < @size
            j = 0
            while j < @size
                rand_card = card.sample
                while @grid.flatten.count(rand_card) > 2 
                    rand_card = card.sample
                end 
                @grid[i][j] = rand_card
                j += 1
            end
            i += 1
        end
    end
    def render 
        i = 0
        while i < @size
            j = 0
            while j < @size
                print @grid[i][j].face_value
                print " "
                j += 1
            end
            print "\n"
            i += 1
        end
    end 
    def won?
        i = 0
        while i < @size
            j = 0
            while j < @size
                return false if @grid[j][j].visibility != true 
                j += 1
            end
           i += 1
        end
        return true
    end 
    def reveal?(guessed_pos) 
        row, column = guessed_pos
        @grid[row][column].face_value 
    end

    

end 