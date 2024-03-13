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
    puts "Type 'quit' to exit"
    puts "Type 'help' to list out commands again"

    loop do
      puts "Type a command for the cookbook: "
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
        self.list()
        puts "Enter a recipe's number to view that recipe: "
        #Add Error Processesing for inputting not a number
        #Add Error Processing for num that is too high
        num = gets.chomp.to_i
        self.view(num)

      elsif cmd == "help"
        self.help_cookbook()

      else
        puts "You entered an incorrect command: "

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

  def help_cookbook()
    puts "Let's Make a cookbook!"
    puts "Type 'list' to view the list of recipes"
    puts "Type 'add' to add a recipe"
    puts "Type 'view' to view a recipe"
    puts "Type 'quit' to exit"
    puts "Type 'help' to list out commands again"
  end

  def view(num)
    recipe = @recipes[(num - 1)]
    puts "At recipe #{recipe.name}"
    puts "Type 'list' to view the list of ingredients"
    puts "Type 'add' to add an ingredients"
    puts "Type 'view' to view a recipe's steps"
    puts "Type 'step' to add or modify a step"
    puts "Type 'back' to go back to the cookbook"
    puts "Type 'help' to list out commands again"

    loop do
      puts "Type a command for the recipe #{recipe.name}: "
      cmd = gets.chomp.downcase

      if cmd == "back"
        break

      elsif cmd == "list"

        if recipe.ingredients.empty?
          puts "There are no ingredients in the recipe"
          puts " "
        else
          recipe.list()
        end

      elsif cmd == "add"

        puts "Please enter an ingredient name: "
        ingredient = gets.chomp.to_sym
        puts "Please enter an amount: "
        amount = gets.chomp
        recipe.add_ingredient(ingredient, amount)

      elsif cmd == "view"

        if recipe.steps.empty?
          puts "There are no steps in the recipe"
          puts " "
        else
          recipe.view()
        end
      
      elsif cmd == "step"

        puts "Please enter a step number (as an integer): "
        #Add Error Processing for non integers
        num = gets.chomp.to_s
        puts "Please enter the step: "
        step = gets.chomp
        recipe.add_step(num, step)

      elsif cmd == "help"
        recipe.help_recipe()

      else
        puts "You entered an incorrect command: "
      end

    end

  end

end

