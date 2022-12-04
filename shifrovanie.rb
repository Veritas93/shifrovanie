require 'digest'
puts "Введите слово или фразу для шифрования:"
string = STDIN.gets.chomp
puts "Каким способом шифровать?"
puts "1. MD5"
puts "2. SHA1"
incrypt_methods = STDIN.gets.to_i
until incrypt_methods.between?(1,2)
  puts "Выбирите 1 или 2"
  incrypt_methods = STDIN.gets.to_i
end
case incrypt_methods
when 1
  puts Digest::MD5.hexdigest(string)
when 2
  puts Digest::SHA1.hexdigest(string)
end
