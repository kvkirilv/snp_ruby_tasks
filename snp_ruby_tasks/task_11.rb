=begin
Реализуйте класс Dessert c геттерами и сеттерами для полей класса name и
calories, конструктором, принимающим на вход name и calories, а также двумя
методами healthy? (возвращает true при условии калорийности десерта менее 200)
и delicious? (возвращает true для всех десертов).	
=end

class Dessert
	attr_accessor :name, :calories

	def initialize(name, calories)
        @name, @calories = name, calories
    end

    def healthy?
        (0...200).include?(@calories) 		
    end 

    def delicious?
        true 
    end
end

#Test
puts "Напишите название десерта:"
name = gets.chomp.to_s
puts "Напишите калорийность десерта:"
calories = gets.chomp.to_i

dessert = Dessert.new(name, calories)
puts dessert.healthy?
puts dessert.delicious?

