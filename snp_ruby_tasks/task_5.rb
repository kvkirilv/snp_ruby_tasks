=begin
Разработать метод date_in_future(integer), который вернет дату через integer дней.
Если integer не является целым числом, то метод должен вывести текущую дату.
Формат возвращаемой методом даты должен иметь следующий вид '01-01-2001
22:33:44’.
Для работы со временем в языке Ruby рекомендуется использовать библиотеку
active_support, которая расширяет его дополнительными методами, включая работу
со временем.
Тесты для примеров и проверки:
date_in_future([]) # => текущая дата
date_in_future(2) # => текущая дата + 2 дня
=end

require 'active_support/all' 

def date_in_future(day)		
	if day.is_a?(Integer) 
		day.days.from_now.strftime("%d-%m-%Y %H:%M:%S")
	else
		Time.now.strftime("%d-%m-%Y %H:%M:%S")
	end
end

puts "Пожалуйства введите целое число:"
day = gets.chomp.to_i

# Test
puts date_in_future(day)
puts date_in_future([]) # => текущая дата
puts date_in_future(2) # => текущая дата + 2 дня