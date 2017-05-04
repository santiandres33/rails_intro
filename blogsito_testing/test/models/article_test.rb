require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  # RED GREEN REFACTOR

  test 'should not save an article without a title' do
    article = Article.new
    assert_not article.save
  end

end
