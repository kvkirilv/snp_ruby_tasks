=begin
Разработайте функцию count_words(string), которая будет возвращать хэш со
статистикой частоты употребления входящих в неё слов.
Тесты для примеров и проверки:
count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo"
# => {'doo' => 3, 'bee' => 2}
=end

def count_words(string)
	string.to_s.downcase!.scan(/\w+/).inject(Hash.new(0)) { |k, v| k[v] += 1; k }
end

#Test
puts count_words("A man, a plan, a canal -- Panama") # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
puts count_words "Doo bee doo bee doo" # => {'doo' => 3, 'bee' => 2}
