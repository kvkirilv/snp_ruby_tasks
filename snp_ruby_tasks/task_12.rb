=begin
  Создайте класс JellyBean, расширяющий класс Dessert (из Упражнения 11) новыми
геттерами и сеттерами для атрибута flavor. Измените метод delicious? таким
образом, чтобы он возвращал false только в тех случаях, когда flavor равняется
«black licorice».  
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

class JellyBean < Dessert
    attr_accessor :flavor
    def initialize(name, calories, flavor)
        super(name, calories) 
        @flavor = flavor
    end

    def delicious?
        flavor != "black licorice"            
    end
end

#Test
puts "Напишите название десерта:"
name = gets.chomp.to_s
puts "Напишите калорийность десерта:"
calories = gets.chomp.to_i
puts "Напишите аромат:"
flavor = gets.chomp.to_s

jellybean = JellyBean.new(name, calories, flavor)
puts jellybean.healthy?
puts jellybean.delicious?


