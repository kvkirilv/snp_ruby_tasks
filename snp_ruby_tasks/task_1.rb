=begin
Разработайте метод palindrome?(string), который будет определять, является ли
строка string палиндром (строкой, которая читается одинаково как с начала так и с
конца), при условии игнорирования пробелов, знаков препинания и регистра. 
=end

def palindrome(string) 
	if !(string.empty? && !string.nil?) 
		string.to_s.downcase!
		string.gsub!(/[^0-9A-Za-zА-Яа-я]/, '')		
		if string == string.reverse			
			return true
		else
			return false
		end
	else
		puts "Я не понимаю что вы ввели!!!! Повторите:"
		palindrome(gets.chomp)
	end
end

puts "Введите строку:"
puts palindrome(gets.chomp)

