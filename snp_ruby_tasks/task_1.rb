=begin
Разработайте метод palindrome?(string), который будет определять, является ли
строка string палиндром (строкой, которая читается одинаково как с начала так и с
конца), при условии игнорирования пробелов, знаков препинания и регистра. 
=end

def palindrome(string)  
		string.downcase!
		string.gsub!(/[^0-9A-Za-zА-Яа-я]/, '')		
		if string == string.reverse		#Проверяю что строка равна "перевернутой" строке	
			true
		else
			false
		end	
end

puts "Введите строку:"
string = gets.chomp
while string.empty?
	puts "Я не понимаю что вы ввели!!!! Повторите:"
	string = gets.chomp
end
puts palindrome(string)

