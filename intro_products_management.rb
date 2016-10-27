products = ["Negan",
 "Glen Eating Pizza",
 "Glen eye out of his head",
 "Abraham",
 "Homero Jay Simpson",
 "Maggie Simpson",
 "Moe",
 "Jhon Snow",
 "Tyrion",
 "Eleven",
 "El Chavo",
 "Don Ramon",
 "Chompiraz"
]
products_caracteristics = {}
products.each_with_index do |p , i|
  products_caracteristics[p] = {
    cost: 10,
    color: "undefined",
    index_product: i
  }
end
shopping_Car = {}
user_character = -1;

while user_character != "exit"
  puts '#########################################'
  puts "#############Costumer Store##############"
  puts '#########################################'
  puts "#Please, type the name of your character#"
  puts '#########################################'
  user_character = gets.chomp.downcase
  break if user_character == "exit"
  #search in the products the name of the character
  #matched_character = false
  index = 0
  matched_index = []
  until index >= products.length
    #matched_character = true if products[index].downcase.include? user_character
    #puts "tu disfraz es: #{products[index]}" if matched_character
    if products[index].downcase.include? user_character
      puts "tu disfraz es: ##{index}. #{products[index]}"
      matched_index << index
    end
    index += 1
  end

  if matched_index.any?
    until matched_index.include? user_character
      puts '#########################################'
      puts "#######Please select your costome#######"
      puts '#########################################'
      user_character = gets.chomp.to_i
      if matched_index.include? user_character
        puts "you choose: #{products[user_character]}"
        puts "Do you want buy it #{products_caracteristics[products[user_character]][:cost]}$ ? (yes/no)"
        if gets.chomp.downcase == "yes"
          shopping_Car[products[user_character]] = "comprado"
        end
      else
        puts "That costome don't exist"
      end
    end
  else
      puts "We did not find you costume"
  end

  puts "Your shopping car: " if shopping_Car.any?
  puts shopping_Car if shopping_Car.any?

end
