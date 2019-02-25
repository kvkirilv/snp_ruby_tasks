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
	
	day = Integer(day) rescue false
	if day 
		return day.days.from_now.utc
	else
		Time.now.utc
	end
end

puts "Пожалуйства введите целое число:"
puts date_in_future(gets.chomp)