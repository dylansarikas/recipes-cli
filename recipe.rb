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

end
