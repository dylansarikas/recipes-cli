require_relative "recipe"

class Cookbook
  def initialize
    @recipes = []
  end

  def start
    puts "Let's Make a cookbook!"
  end

end

cookbook = Cookbook.new

cookbook.start
