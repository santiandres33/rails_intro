require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest


  test 'welcome index should respond with success' do
    get welcome_index_url
    assert_response :success
  end


end
