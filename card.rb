class Card

    attr_reader :face_value, :visibility    
    def initialize(face_value)
        @face_value = face_value
        @visibility = false
    end

    # def show_card
    #     if @visibility == true
    #         return @face_value
    #     else
    #         return nil
    #     end
    # end

    def hide
        @visibility = false
    end
    def reveal
        @visibility = true
    end
    def to_s
        if @visibility == true 
            return @face_value.to_s
        else
            return nil
        end  

    end 
    def ==(card)
        @face_value == card.face_value        
    end 
    # balaji = {@face_value = "Balaji", Visibility = true}..  balaji.hide {@face_value = "Balaji", Visibility = false}

end