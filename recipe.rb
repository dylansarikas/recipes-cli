class Recipe
  attr_accessor :name, :ingredients, :steps

  def initialize(name)
    @name = name
    @ingredients = {}
    @steps = {}
  end

  def add_ingredient(ingredient, amount)
    @ingredients = { ingredient => amount }
  end

  def add_step(num, step)
    @steps = { num => step}
  end

  def list()
    puts @ingredients
  end

end
