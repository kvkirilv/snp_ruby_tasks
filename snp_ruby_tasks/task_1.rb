=begin
Разработайте метод palindrome?(string), который будет определять, является ли
строка string палиндром (строкой, которая читается одинаково как с начала так и с
конца), при условии игнорирования пробелов, знаков препинания и регистра. 
=end

def palindrome?(string)
	return false if string.nil?	
	string = string.to_s.downcase.gsub(/[^0-9A-Za-zА-Яа-я]/, '')				
	string == string.reverse 	#Проверяю что строка равна "перевернутой" строке
end

puts "Введите строку:"
string = gets.chomp
while string.empty?
	puts "Я не понимаю что вы ввели!!!! Повторите:"
	string = gets.chomp
end

#Test
puts palindrome?(string) # => Результат ввода
puts palindrome?("A man, a plan, a canal -- Panama") # => true
puts palindrome?("Madam, I'm Adam!") # => true
puts palindrome?(333) # => true
puts palindrome?(nil) # => false
puts palindrome?("Abracadabra") # => false