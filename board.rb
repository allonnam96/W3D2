class Board 
    def initialize(size)
        @size = size
        @grid = Array.new(size){Array.new(size,"-")}
    end 
end 