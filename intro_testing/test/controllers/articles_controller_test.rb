require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest

  # Cosas que se prueban
  # - fue el request existoso?
  # - fue el usuario redireccionado a donde tocaba?
  # - fue el usuario correctamente autenticado?
  # - fue el objeto correcto guardado en el template de respuesta?
  # - se mostro el mensaje correcto al usuario en la vista? flash

  # 3 hashes quedan disponibles luego de hacer un request
  # cookies - Any cookies that are set
  # flash - Any objects living in the flash
  # session - Any object living in session variable

  # Tambie hay acceso a tres variables de instancia
  # @controller
  # @request
  # @response

  # Se llama siempre antes de una prueba
  setup do
    @article = articles(:one)
  end

  # Se llama siempre al final de una prueba
  teardown do
   # when controller is using cache it may be a good idea to reset it afterwards
   Rails.cache.clear
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { body: @article.body, title: @article.title } }
    end

    assert_equal 'Article was successfully created.', flash[:notice]
    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { body: @article.body, title: @article.title } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end
