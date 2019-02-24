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
