module Color

        RED   = "\e[31m"
        GREEN = "\e[32m"
        BLUE  = "\e[34m"
        BLACK = "\e[30m"
        WHITE = "\e[39m"

        def color(couleur=:white)
                if couleur.is_a? Symbol
                        return RED   << self << BLACK if couleur == :red
                        return GREEN << self << BLACK if couleur == :green
                        return BLUE  << self << BLACK if couleur == :blue
                        return WHITE << self << BLACK if couleur == :white
                        return BLACK << self << BLACK if couleur == :black
                end
                return self
        end     
end

