=begin
Дан массив array и числовой диапазон range. Разработайте метод coincidence(array,
range) для определения элементов из массива array, значения которых входят в
указанный диапазон. Если не передан хотя бы один из параметров, то должен
вернуться пустой массив.
Тесты для примеров и проверки:
coincidence([1, 2, 3, 4, 5], (3..5)) # => [3, 4, 5]
coincidence() # => []
coincidence([nil, 1, 'foo', 4, 2, 2.5], (1..3)) # => [1, 2, 2.5] 
=end

def coincidence(array = [], range)
	new_array = Array.new() 
	if !array.empty? && !range.to_a.empty? 
		array.each do |item|				
				if range.include?(item.to_i)
					new_array.push(item)
				end
			end				
		return new_array		
	else	
		return new_array
	end
end

puts "Пожалуйста заполните элементами массив значений через ENTER:"
array = []
while true
  input = gets.chomp
  break if input.empty?
  array << input
end

puts "Пожалуйста заполните диапазон через ENTER:"
start_range = gets.chomp.to_i
end_range = gets.chomp.to_i
range = Range.new(start_range,end_range)

puts(coincidence(array, range))