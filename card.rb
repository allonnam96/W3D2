class Card

    def initialize(face_value)
        @face_value = face_value
        @visibility = false
    end

    def show_card
        if @visibility == true
            return @face_value
        else
            return nil
        end
    end

    def hide
    end

end