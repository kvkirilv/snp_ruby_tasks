=begin	
Дан массив элементов произвольной природы. Необходимо разработать метод
max_odd(array), который определит максимальный нечетный элемент. Вернуть nil,
если таких элементов нет в переданном массиве.
Тесты для примеров и проверки:
max_odd([1, 2, 3, 4, 4]) # => 3
max_odd([21.0, 2, 3, 4, 4]) # => 21
max_odd(['ololo', 2, 3, 4, [1, 2], nil]) # => 3
max_odd(%w[ololo fufufu]) # => nil
max_odd([2, 2, 4]) # => nil 
=end

def max_odd(array = []) 
	max_elem = nil	
	array.each do |item|
		if (item.to_i % 2 != 0 && item.to_i > max_elem.to_i)
			max_elem = item.to_i
		end
	end
	return max_elem
end

puts "Пожалуйста введите массив значений через ENTER:"
array = []
while true
	input = gets.chomp
	break if input.empty? 
	array << input
end

puts(max_odd(array))


