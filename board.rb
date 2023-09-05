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
    rand_card = card.sample
    if @grid.flatten.count(rand_card) < 2
        i = 0
        while i < @size
            j = 0
            while j < @size
                @grid[i][j] = 
                j += 1
            end
            i += 1
        end
    end
    end

end 