=begin
Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")
вы могли его использовать как "foo".palindrome? # => false.	
=end

module Palindrome
  def palindrome?
  	return false if self.nil?
	string = self.to_s.downcase.gsub(/[^0-9A-Za-zА-Яа-я]/, '')				
	string == string.reverse
  end
end

class String
  include Palindrome
end

#Test
puts "Введите строку:"
string = gets.chomp.to_s
while string.empty?
	puts "Я не понимаю что вы ввели!!!! Повторите:"
	string = gets.chomp.to_s
end

puts string.palindrome?
puts "vasya".palindrome?
