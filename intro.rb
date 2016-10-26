print("hello world")
puts "hello world :D"
puts "unstring".length
puts "unstring".reverse
my_name = "mauricio"
puts my_name
puts my_name.reverse! # ! lo almacena en la variable, modifica la variable
=begin
  rails no soporta comentarios de varias lineas
=end
puts my_name.upcase!
puts my_name.downcase
puts my_name.reverse!.capitalize!

my_last_name = "hernandez" #gets.chomp
puts my_name + " " + my_last_name.capitalize!
puts "hola querido #{my_name}!"

puts 1==1
puts 1!=1
puts 1>1
puts 1<1
puts 1<=1
puts 1>=1

puts 1.eql? "1"  # ==
puts 1.eql? 1

puts 1.equal? "1" #valida que este en el mismo indice de memoria
puts 1.equal? 1

#<=> mayor igual menor: -1 si es menor, 0 si es igual, 1 si es mayor
puts 1<=>2
puts 2<=>1
puts 1<=>1

#and &&  se puede 1==1 and true -o usar los signos- 1==1 && true
#or ||

if 1==1
  puts "son iguales"
end

puts "que chimba" if 1==1
puts "que chimba" if 1!=1

uno = 1
dos = 2
if uno==dos
  puts "mentira"
else
  puts "verdad"
end

if uno==dos
  puts "mentira"
elsif uno!=dos
  puts "verdad"
else
  puts "no llega aca"
end

if uno < 3 then puts "es mayor" else puts "algo menor" end

mis_sentimiento = gets.chomp

case mis_sentimiento
when "mal" then puts "mal :("
when "bien" then puts "bien :)"
else puts "que paso? :o"
end

my_little_feeling = gets.chomp
case my_little_feeling
when "mal"
  puts ":("
when "bien"
  puts ":)"
else
  puts ":o"
end


unless mis_sentimiento == ":(" then puts "estoy bien" end

unless mis_sentimiento == ":)"
  puts "estoy mal"
else
  puts "la vida es cool"
end

puts "quiero cantar" unless 1!=1
