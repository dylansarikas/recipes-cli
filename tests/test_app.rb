require 'minitest/autorun'
require './app.rb'

class TestApp < Minitest::Test

  def test_add
    cookbook = Cookbook.new
    assert_equal "Pasta", cookbook.add("Pasta"), "Add Method Failed"
  end

  def test_list
    cookbook = Cookbook.new
    cookbook.add("Pasta")
    cookbook.add("Cake")
    cookbook.add("Stew")
    assert_equal 3, cookbook.list(), "List Method Failed"
  end

end
