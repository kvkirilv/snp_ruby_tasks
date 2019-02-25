=begin
Разработать методы для программы Камень-Ножницы-Бумага.
Метод rps_game_winner должен принимать на вход массив следующей структуры
[ ["player1", "P"], ["player2", "S"] ], где P - бумага, S - ножницы, R - камень, и
функционировать следующим образом:
• если количество игроков больше 2 необходимо вызывать исключение
WrongNumberOfPlayersError;
• если ход игроков отличается от ‘R’, ‘P’ или ‘S’ необходимо вызывать
исключение NoSuchStrategyError;
• в иных случаях необходимо вернуть имя и ход победителя, если оба
игрока походили одинаково - выигрывает первый игрок.
Тесты для примеров и проверки:
rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]])) # =>
WrongNumberOfPlayersError
rps_game_winner([%w[player1 P], %w[player2 A]])) # => NoSuchStrategyError
rps_game_winner([%w[player1 P], %w[player2 S]])) # => 'player2 S'
rps_game_winner([%w[player1 P], %w[player2 P]])) # => 'player1 P' 	
=end

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game_array)
	raise WrongNumberOfPlayersError if game_array.length  != 2
	strategy_array = ["P", "S", "R"]
	raise NoSuchStrategyError if !strategy_array.include?(game_array[0][1].to_s.upcase) || !strategy_array.include?(game_array[1][1].to_s.upcase)
	player1 = game_array[0]
	player2 = game_array[1]
	case player1[1]
	when "P"
		case player2[1] 
			when "P"
				return player1.join(' ')
			when "S" 
				return player2.join(' ')
			when "R"
				return player1.join(' ')
			end
	when "S"
		case player2[1] 
			when "P"
				return player1.join(' ')
			when "S" 
				return player1.join(' ')
			when "R"
				return player2.join(' ')
			end
	when "R"
		case player2[1] 
			when "P"
				return player2.join(' ')
			when "S" 
				return player1.join(' ')
			when "R"
				return player1.join(' ')
			end
	end
end

puts(rps_game_winner([["KIRILOV",'P'], ['IVANOV', 'S']]))