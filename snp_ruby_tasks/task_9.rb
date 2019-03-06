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
	hash1.each {|k, v| hash1.delete(k) if v < 10}
	hash2.each {|k, v| hash2.delete(k) if v < 10}
	hash1.merge(hash2)   #=> {"a"=>100, "b"=>254, "c"=>300}
	new_hash = hash1.merge(hash2){|key, oldval, newval|  newval if oldval <= newval} # Как дополнить условие для oldval > newval
	return new_hash.sort_by { |key, val| val }
end

#Test
#puts connect_hashes({ a: 8, b: 9, d: 11 }, { c: 12, a: 15 })  # => { c: 11, b: 12 }
puts connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 }) # => { c: 11, b: 12 }
puts connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 }) # => { d: 11, c:12, a: 13 }
puts connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 }) # => { c: 11, b: 12, a:15 }