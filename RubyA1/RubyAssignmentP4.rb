#Part4: Rock Paper Scissors
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end



def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
	p1strategy = game[0][1].downcase
	p2strategy = game[1][1].downcase
	raise NoSuchStrategyError unless p1strategy == "r" || p1strategy == "p" || p1strategy == "s"
	raise NoSuchStrategyError unless p2strategy == "r" || p2strategy == "p" || p2strategy == "s"
	if p1strategy == "p" and p2strategy == "s"
		return game[1]
	elsif p1strategy == "p" and p2strategy == "r"
		return game[0]
	elsif p1strategy == "p" and p2strategy == "p"
		return "Tie"
	elsif p1strategy == "r" and p2strategy == "p"
		return game[1]
	elsif p1strategy == "r" and p2strategy == "s"
		return game[0]
	elsif p1strategy == "r" and p2strategy == "r"
		return "Tie"
	elsif p1strategy == "s" and p2strategy == "p"
		return game[0]
	elsif p1strategy == "s" and p2strategy == "r"
		return game[1]
	elsif p1strategy == "s" and p2strategy == "s"
		return "Tie"
	end
	#sources: http://codepad.org/Xbdvs7CQ
	#sources: https://github.com/epson121/Ruby/blob/master/Rock-Paper-Scissors.rb

end

test game: puts rps_game_winner((["Armando", "p"], ["Dave", "S"]])

def rps_tournament_winner(tournament)
	puts tournament[0][0]
	puts 'hello'
	if tournament[0][0].is_a?(String)
		rps_game_winner(tournament)
	else
		return rps_tournament_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
	end
	#source: http://pastebin.com/GeXQx2FY
end

puts rps_tournament_winner([
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
])