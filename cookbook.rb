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
        self.list()
        puts "Enter a recipe's number to view that recipe: "
        #add Error Processesing for inputting not a number
        num = gets.chomp.to_i
        self.view(num)

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

  def view(num)
    #Add Error Processing for num that is too high
    recipe = @recipes[(num - 1)]
    puts "At recipe #{recipe.name}"
    puts "Type 'list' to view the list of ingredients"
    puts "Type 'add' to add an ingredients"
    puts "Type 'view' to view a recipe's steps"
    puts "Type 'step' to add or modify a step"
    puts "Type 'quit' to exit"

    loop do
      puts "Type a command:"
      cmd = gets.chomp.downcase

      if cmd == "quit"
        break
      end

    end

  end

end

cookbook = Cookbook.new

cookbook.start
