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

def multiply_numbers(inputs = "")	
	inputs.to_s.scan(/\d/).inject{|sum, n| sum.to_i * n.to_i }
end

# Test
puts multiply_numbers() # => nil
puts multiply_numbers('ss') # => nil
puts multiply_numbers('1234') # => 24
puts multiply_numbers('sssdd34') # => 12
puts multiply_numbers(2.3) # => 6
puts multiply_numbers([5, 6, 4]) # => 120