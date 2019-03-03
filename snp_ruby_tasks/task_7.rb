=begin
Анаграмма — литературный приём, состоящий в перестановке букв или звуков
определённого слова (или словосочетания), что в результате даёт другое слово
или словосочетание.
Разработайте метод combine_anagrams(words_array), который принимает на вход
массив слов и разбивает их в группы по анаграммам, регистр букв не имеет
значения при определении анаграмм.
Тест для примеров и проверки:
combine_anagrams(%w[cars for potatoes racs four scar creams scream] # =>
[ ["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams",
"scream"] ] 
=end

def combine_anagrams(array_word)
	array_word.group_by { |item| item.downcase.chars.sort }.values
end

array_word = []
puts "Пожалуйста заполните массив слов через ENTER:"
while true
	input = gets.chomp
	break if input.empty?
	array_word << input
end

puts combine_anagrams(array_word)
puts combine_anagrams(%w[cars for potatoes racs four scar creams scream]) # =>[ ["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams","scream"] ] 