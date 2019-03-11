=begin
Необходимо разработать метод connect_hashes(hash1, hash2), который соединит
два переданных хеша, значениями ключей в которых являются числа, и вернет
новый хэш, полученный по следующим правилам:
• приоритетными являются ключи того хэша, сумма значений ключей
которого больше (если суммы значений ключей будут равны, то второй
хэш считается более приоритетнее)
• ключи со значениями меньше 10 не должны попасть в финальный хэш
• получившийся хэш должен вернуться упорядоченным по значениям
ключей в порядке возрастания.
Тесты для примеров и проверки:
connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 }) # => { c: 11, b: 12 }
connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 }) # => { d: 11, c:
12, a: 13 }
connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 }) # => { c: 11, b: 12, a:
15 }
=end

def connect_hashes(hash1, hash2)
	if hash1.values.inject(:+) <= hash2.values.inject(:+)
		hash1.merge(hash2).delete_if {|key, value| value < 10 }.sort_by { |key, val| val }.to_h
	else
		hash2.merge(hash1).delete_if {|key, value| value < 10 }.sort_by { |key, val| val }.to_h
	end
end

#Test
puts connect_hashes({ a: 8, b: 9, d: 11 }, { c: 12, a: 15 }) 
puts connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 }) # => { c: 11, b: 12 }
puts connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 }) # => { d: 11, c:12, a: 13 }
puts connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 }) # => { c: 11, b: 12, a:15 }