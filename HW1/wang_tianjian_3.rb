class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
    
def rps_game_winner(game)
    result = Array.new
    if game.length != 2
        raise WrongNumberOfPlayersError , "There are a total of two players"
    elsif (game[0][1] != 'R' && game[0][1] != 'P' && game[0][1] != 'S') || (game[1][1] != 'R' && game[1][1] != 'P' && game[1][1] != 'S')
    	raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    elsif ((game[0][1] == 'R' && game[1][1] == 'S') || (game[0][1] == 'P' && game[1][1] == 'R') || (game[0][1] == 'S' && game[1][1] == 'P') || (game[0][1] == game[1][1]))
    	result = game[0]
    else
    	result = game[1]
    end
    puts result
end
