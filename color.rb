module Color
	
	DEFAULT = "\e[39m"
	
	BLACK   = "\e[30m"
        RED     = "\e[31m"
        GREEN   = "\e[32m"
        YELLOW  = "\e[33m"
	BLUE    = "\e[34m"
	MAGENTA = "\e[35m"
	CYAN	= "\e[36m"
        
	LBLACK   = "\e[90m"
        LRED     = "\e[91m"
        LGREEN   = "\e[92m"
        LYELLOW  = "\e[93m"
        LBLUE    = "\e[94m"
        LMAGENTA = "\e[95m"
        LCYAN    = "\e[96m"
	WHITE    = "\e[97m"
	
	COLORS = {
                        :black    =>  BLACK,
                        :red      =>  RED,
                        :green    =>  GREEN,
                        :yellow   =>  YELLOW,
                        :blue     =>  BLUE,
                        :magenta  =>  MAGENTA,
                        :cyan     =>  CYAN,
                        :lblack   =>  LBLACK,
                        :lred     =>  LRED,
                        :lgreen   =>  LGREEN,
                        :lyellow  =>  LYELLOW,
                        :lblue    =>  LBLUE,
                        :lmagenta =>  LMAGENTA,
                        :lcyan    =>  LCYAN,
                        :white    =>  WHITE
                }

	COLORS.default = DEFAULT
	
	def self.color(str="", couleur=:default)
		str.to_s
		couleur.to_s.to_sym
                return COLORS[couleur] + str + DEFAULT
	end	
        
	def color(couleur=:default)
		couleur.to_s.to_sym
      	        return COLORS[couleur] + self + DEFAULT
        end     
end
