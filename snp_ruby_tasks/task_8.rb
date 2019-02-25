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

def multiply_numbers(inputs=nil)
	if inputs.nil?
		return nil
	end
	multiply = 1
	inputs.to_s.gsub!(/[^0-9]/, '').split('').each {|item|  multiply = multiply * item.to_i}
	return multiply	
end

puts multiply_numbers([5, 6, 4])
