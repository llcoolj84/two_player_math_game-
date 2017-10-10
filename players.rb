class Players 
        attr_accessor :name         #set accessor method to make the name and lives accessible and changable
        attr_accessor :lives 
    def initialize(name)
        @name = name 
        @lives = 3
    end 

    def alive?              # question mark indicates it is a boolean value 
        @lives > 0
    end 

end 

































