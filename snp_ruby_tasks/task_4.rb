=begin	
Дан массив целых чисел. Необходимо разработать метод sort_array(array),который
поменяет местами минимальные и максимальные элементы массива, а также
добавит в конец массива одно минимальное значение из него.
Тесты для примеров и проверки:
sort_array([]) # => []
sort_array([2, 4, 6, 8]) # => [8, 4, 6, 2, 2]
sort_array([1]) # => [1, 1]
sort_array([1, 2, 1, 3]) # => [3, 2, 3, 1, 1] 	
=end

def sort_array(array)      
	array = array.split(',')
	min_array_val = array.min
	max_array_val = array.max
	min_index = array.index(array.min)		  
	max_index = array.index(array.max)
	array[min_index] = max_array_val
	array[max_index] = min_array_val
	array.push(min_array_val)
	return array  						# Сделал через 4 переменные думаю можно оптимизировать
end

puts "Пожалуйста введите массив целых чисел через запятую:"
puts sort_array(gets.chomp) 