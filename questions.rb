class Questions
    attr_accessor :answer       # answer and printing attr to view new and changeable answers 
    attr_accessor :print
  
    def initialize
      @num1 = 1 + rand(20) 
      @num2 = 1 + rand(20)
      @answer = @num1 + @num2
      @print = "What does #{@num1} + #{@num2} equals to?" 
    end
  end








































































