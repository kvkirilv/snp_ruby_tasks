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
	sring = string.gsub!(/[^0-9A-Za-zА-Яа-я ]/, '').downcase!.split(" ")
    stat = Hash.new(0)
	sring.each { |word| stat[word] += 1 }
	return stat.sort_by {|k, v| v }.reverse!
end

puts count_words("A man, a plan, a canal -- Panama")
