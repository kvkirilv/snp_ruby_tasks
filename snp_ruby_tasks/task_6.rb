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
	raise WrongNumberOfPlayersError unless game_array.length  == 2
	strategy_array = ["P", "S", "R"]
	raise NoSuchStrategyError unless strategy_array.include?(game_array[0][1].to_s.upcase) || strategy_array.include?(game_array[1][1].to_s.upcase)
	player1 = game_array[0]
	player2 = game_array[1]
	case player1[1]+player2[1]
		when "SP", "PR", "RS"
			return player1.join(' ')
		when "PS", "RP", "SR"
			return  player2.join(' ')
		when "PP", "RR", "SS"
			return player1.join(' ')	
	end
end

player1 = []
player2 = []
game_array = []
puts "Пожалуйста заполните имя первого игрока:"
player1[0] = gets.chomp
puts "Заполните ход первого игрока P - бумага, S - ножницы, R - камень"
player1[1] = gets.chomp
game_array << player1
puts "Пожалуйста заполните имя второго игрока:"
player2[0] = gets.chomp
puts "Заполните ход второго игрока P - бумага, S - ножницы, R - камень"
player2[1] = gets.chomp
game_array << player2

#Test
puts rps_game_winner(game_array)
puts rps_game_winner([%w[player1 P], %w[player2 A]]) # => NoSuchStrategyError
puts rps_game_winner([%w[player1 P], %w[player2 S]]) # => 'player2 S'
puts rps_game_winner([%w[player1 P], %w[player2 P]]) # => 'player1 P'
