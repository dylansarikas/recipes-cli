class Recipe
  attr_accessor :name, :ingredients, :steps

  def initialize(name)
    @name = name
    @ingredients = {}
    @steps = {}
  end

  def add_ingredient(ingredient, amount)
    @ingredients[ingredient] = amount
  end

  def add_step(num, step)
    @steps[num] = step
  end

  def list()
    @ingredients.each do |ing, amn|
      puts "#{amn} of #{ing}"
    end
  end

  def view()
    temp = @steps.sort.to_h # sorts the hash by key so the recipe is in order (assuming intergers were given for the step number)
    temp.each do |num, step|
      puts "##{num}. #{step}"
    end
  end

  def help_recipe()
    puts "At recipe #{self.name}"
    puts "Type 'list' to view the list of ingredients"
    puts "Type 'add' to add an ingredients"
    puts "Type 'view' to view a recipe's steps"
    puts "Type 'step' to add or modify a step"
    puts "Type 'back' to go back to the cookbook"
    puts "Type 'help' to list out commands again"
  end

end
