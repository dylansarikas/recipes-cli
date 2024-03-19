require 'minitest/autorun'
require './app.rb'

class TestApp < Minitest::Test
  def setup
    @cookbook = Cookbook.new
  end

  def test_add
    assert_equal "Pasta", @cookbook.add("Pasta"), "Add Method Failed"
  end

  def test_list
    @cookbook.add("Pasta")
    @cookbook.add("Cake")
    @cookbook.add("Stew")
    assert_equal 3, @cookbook.list(), "List Method Failed"
  end

end
