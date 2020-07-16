=begin
Simple game of random numbers and luck
=end 

class Play
    attr_accessor :name, :player 

    def initialize(name)
        @game_name = name
        @round = 1
    end

    def AddPlayers(player1, player2)
        @player1 = Player.new(player1)
        @player2 = Player.new(player2)
        @player1.score = 0
        @player2.score = 0
        puts "Game Starting"
        puts "Player 1: " + @player1.name 
        puts "Player 2: " + @player2.name 
    end
    
    def Player1Round 
        #puts @player1.name
        puts "#{@player1.name} Please put in pick number"
        STDOUT.flush
        number = gets.chomp.to_i
        @player1.score += number*(rand(rand(number)..number*2) <=> number)
        puts "Your total score is #{@player1.score}"
        self.Player2Round
    end
    
    def Player2Round
        #puts @player1.name
        puts "#{@player2.name} Please put in pick number"
        STDOUT.flush
        number = gets.chomp.to_i
        @player2.score += number*(rand(rand(number)..number*2) <=> number)
        puts "Your total score is #{@player2.score}"
        puts "Player 1 Score: #{@player1.score}"
        puts "Player 2 Score: #{@player2.score}"
        @round += 1
        self.Declarewinner
    end

    def Declarewinner
       if @round <= 5
        self.Player1Round
       else
        winner = @player1.score > @player2.score ? "#{@player1.name} is the winner with #{@player1.score}" : "#{player2.name} You are the winner with #{@player2.score}"
        puts winner
       end
    end

end

class Player
    attr_accessor :name, :score
    def initialize(player)
        @name = player
    end

end

#start game
game1 = Play.new("Lovers Play")

#Add players
game1.AddPlayers("Ayodele", "Folakemi")
#game1.returnPlayers
game1.Player1Round
