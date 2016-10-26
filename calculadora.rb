puts "RB calculator"

i = nil

until i == "exit"
  puts "Type your first operator" #captura el primer valor
  opt1 = gets.chomp.to_f
  puts "Type your second operator" #captura el segundo valor
  opt2 = gets.chomp.to_f
  puts "type your operator (sum, rest, mult, div, pow)" #captura el operador
  operation = gets.chomp
  res = nil
  i = operation
  i.downcase!
  #if i =="exit" then return 0 end
  case operation
  when "sum", "+"
    res = opt1 + opt2
    #puts "#{opt1} #{operation} #{opt2} #{"="} #{res}"
  when "rest", "-"
    res = opt1 - opt2
    #puts "#{opt1} #{operation} #{opt2} #{"="} #{res}"
  when "mult", "*"
    res = opt1 * opt2
    #puts "#{opt1} #{operation} #{opt2} #{"="} #{res}"
  when "div", "/"
    if opt2 == 0
      puts "No se puede dividir en cero"
    else
      res = opt1 / opt2
      #puts "#{opt1} #{operation} #{opt2} #{"="} #{res}"
    end
  when "pow", "**"
    res = opt1 ** opt2
    #puts "#{opt1} #{operation} #{opt2} #{"="} #{res}"
  else
    if i.downcase != "exit" then puts "operación no definida" end
  end
    if i.downcase != "exit" then  puts "#{opt1} #{operation} #{opt2} #{"="} #{res}" end

end
