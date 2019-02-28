=begin
Разработайте метод palindrome?(string), который будет определять, является ли
строка string палиндром (строкой, которая читается одинаково как с начала так и с
конца), при условии игнорирования пробелов, знаков препинания и регистра. 
=end

def palindrome(string) 
	if !(string.empty? && !string.nil?) 
		string.downcase!
		string.gsub!(/[^0-9A-Za-zА-Яа-я]/, '')		
		if string == string.reverse			
			return true
		else
			return false
		end
	else
		puts "Я не понимаю что вы ввели!!!! Повторите:"
		string = gets.chomp.to_s
		palindrome(gets.chomp.to_s)
	end
end

puts "Введите строку:"
string = gets.chomp.to_s
puts palindrome(string)

