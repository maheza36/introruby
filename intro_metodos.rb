@products = nil
@products_caracteristics = nil
@shopping_Car = nil
@user_character = nil

def init
  @products = ["Negan",
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
  @products_caracteristics = {}
  @products.each_with_index do |p , i|
    @products_caracteristics[p] = {
      cost: 1 + rand(10),
      color: "undefined",
      index_product: i
    }
  end
  @shopping_Car = {}
  @user_character = -1;
end

def print_welcome_msj
  puts '#########################################'
  puts "#############Costumer Store##############"
  puts '#########################################'
  puts "#Please, type the name of your character#"
  puts '#########################################'
  gets.chomp.downcase
end

def find_costumes
  index = 0
  matched_index = []
  until index >= @products.length
    if @products[index].downcase.include? @user_character
      puts "tu disfraz es: ##{index}. #{@products[index]}"
      matched_index << index
    end
    index += 1
  end
  matched_index
end

#if the matched_index include the index type by the user
#ask the user if he/she wants to buy it.
def check_and_ask_buy(matched_index)
  if matched_index.include? @user_character
    puts "you choose: #{@products[@user_character]}"
    puts "Do you want buy it #{@products_caracteristics[@products[@user_character]][:cost]}$ ? (yes/no)"
    if gets.chomp.downcase == "yes"
      @shopping_Car[@products[@user_character]] = "comprado"
    end
  else
    puts "That costome don't exist"
  end
end

def select_your_order(matched_index)
  if matched_index.any?
    until matched_index.include? @user_character
      puts '#########################################'
      puts "#######Please select your costome#######"
      puts '#########################################'
      @user_character = gets.chomp.to_i
      check_and_ask_buy matched_index
    end
  else
      puts "We did not find you costume"
  end
end

def print_shopping_Car
  puts "Your shopping car: " if @shopping_Car.any?
  puts @shopping_Car if @shopping_Car.any?
end

init #inicializa variables
while @user_character != "exit"
  @user_character = print_welcome_msj #mensaje, return the user input
  break if @user_character == "exit" #exit
  matched_index = find_costumes #find the user Costumer
  select_your_order matched_index #select the order
  print_shopping_Car #print shopping_Car
end
