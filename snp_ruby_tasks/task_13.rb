=begin
Адаптируйте ваше решение из Упражнения 1 так, чтобы вместо palindrome?("foo")
вы могли его использовать как "foo".palindrome? # => false.	
=end

class String
  def palindrome?
   if !(self.empty? && !self.nil?) 
		self.to_s.downcase!
		self.gsub!(/[^0-9A-Za-zА-Яа-я]/, '')		
		if self  == self.reverse			
			return true
		else
			return false
		end
	end
  end
end

puts "anna".palindrome?

