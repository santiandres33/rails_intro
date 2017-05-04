require 'test_helper'

class ArticleTest < ActiveSupport::TestCase


  test 'should not save article without title' do
    article = Article.new
    assert_not article.save
  end

  #fixtures

  # Ejemplos de asserts disponibles(todo esto viene de minitest)
  # assert
  # assert_not
  # assert_equal
  # assert_not_equal
  # assert_same
  # assert_not_same
  # assert_nil
  # assert_match
  # assert_includes

  # Estos vienen de rails
  # assert_difference
  # assert_no_difference
  # assert_nothing_raised
  # ..otros

end
