require_relative "recipe"

class Cookbook
  def initialize
    @recipes = []
  end

  def start
    puts "Let's Make a cookbook!"
    puts "Type 'list' to view the list of recipes"
    puts "Type 'add' to add a recipe"
    puts "Type 'view' to view a recipe"
    puts "Type 'quit' at anytime to exit"

    loop do
      puts "Type a command:"
      cmd = gets.chomp.downcase

      if cmd == "quit"
        break

      elsif cmd == "list"
        if @recipes.empty?
          puts "There are no recipes in the cookbook"
          puts " "
        else
          self.list()
        end
      
      elsif cmd == "add"
        self.add()

      elsif cmd == "view"
        #Run view command
        puts "Enter a recipe's number to view that recipe: "
        num = gets.chomp

      else
        puts "You enetered an incorrect commnad: "

      end
    end
  end

  def add()
    puts "Enter a name for the recipe: "
    name = gets.chomp
    recipe = Recipe.new(name)
    @recipes.push(recipe)
  end

  def list()
    count = 1
    while count <= @recipes.length
      puts "#{count}. #{@recipes[(count - 1)].name}"  #Because Count starts at 1 and not 0, this must be corrected when listing the array
      count = count + 1
    end
  end

  def view()

  end

end

cookbook = Cookbook.new

cookbook.start
