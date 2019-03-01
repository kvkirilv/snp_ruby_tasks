=begin
Написать метод multiply_numbers(inputs), который вернет произведение цифр,
входящих в inputs.
Тест для примеров и проверки:
multiply_numbers() # => nil
multiply_numbers('ss') # => nil
multiply_numbers('1234') # => 24
multiply_numbers('sssdd34') # => 12
multiply_numbers(2.3) # => 6
multiply_numbers([5, 6, 4]) # => 120
=end

def multiply_numbers(inputs)
	if inputs == 0 
		return nil
	end
	if inputs.instance_of?( Array )
		multiply = 1
		inputs.each {|item| multiply = multiply * item.to_i}
		return multiply	
	else
		multiply = 1
		inputs = inputs.to_s.split('')
		inputs.each {|item| multiply = multiply * item.to_i}
		return multiply	
	end
end

puts "Если вы собираетесь заполнять массив напишите 'array' иначе оставьте пустое поле"
type_input = gets.chomp.downcase!
if type_input == 'array'
	inputs = []
	puts "Пожалуйста заполните массив через ENTER:"
	while true
		input = gets.chomp
		break if input.empty?
		inputs << input
	end
else
	puts "Пожалуйста заполните строку:"
	inputs = gets.chomp
	puts inputs.gsub!(/[^0-9]/, '').to_i
end
#puts multiply_numbers(inputs)
