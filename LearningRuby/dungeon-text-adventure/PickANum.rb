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
        puts "Round: " + @round.to_s
        puts "#{@player1.name} Please put in pick number"
        STDOUT.flush
        number = gets.chomp.to_i
        roundscore =  number*(rand(rand(number)..number*2) <=> number)
        @player1.score += roundscore
        @player1.Logresults(roundscore)
        self.Player2Round
    end
    
    def Player2Round
        #puts @player1.name
        puts "#{@player2.name} Please put in pick number"
        STDOUT.flush
        number = gets.chomp.to_i
        roundscore= number*(rand(rand(number)..number*2) <=> number)
        @player2.score += roundscore
        @player2.Logresults(roundscore)
        @round += 1
        self.Declarewinner
    end

    def Declarewinner
       if @round <= 5
        puts "Player 1 Score: #{@player1.score}"
        puts "Player 2 Score: #{@player2.score}"
        self.Player1Round
       else
        puts "Player 1 Score: #{@player1.score}"
        puts "Player 2 Score: #{@player2.score}"
        winner = @player1.score > @player2.score ? "#{@player1.name} is the winner with #{@player1.score} points" : "#{@player2.name}, You are the winner with #{@player2.score} points"
        puts winner
        puts "#{@player1.name}'s scores: #{@player1.results.join(",")} | Total: #{@player1.results.sum}"
        puts "#{@player2.name}'s scores: #{@player2.results.join(",")} | Total: #{@player2.results.sum}"
       end
    end

end

class Player
    attr_accessor :name, :score, :results
    def initialize(player)
        @name = player
        @results = [] 
    end

    def Logresults(roundscore)
        @results.push(roundscore)
    end
end

#start game
game1 = Play.new("Lovers Play")

#Add players
game1.AddPlayers("Ayodele", "Folakemi")
game1.Player1Round
